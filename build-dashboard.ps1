[CmdletBinding()]
param(
    [Parameter()]
    [string] $SourcesDirectory,

    [Parameter()]
    [string] $DailyDirectory,

    [Parameter()]
    [string] $OutputPath
)

$ErrorActionPreference = 'Stop'

if ([string]::IsNullOrWhiteSpace($SourcesDirectory)) {
    $SourcesDirectory = Join-Path -Path $PSScriptRoot -ChildPath 'sources'
}
if ([string]::IsNullOrWhiteSpace($DailyDirectory)) {
    $DailyDirectory = Join-Path -Path $PSScriptRoot -ChildPath 'daily'
}
if ([string]::IsNullOrWhiteSpace($OutputPath)) {
    $OutputPath = Join-Path -Path $PSScriptRoot -ChildPath 'index.html'
}

function ConvertTo-HtmlEncoded {
    param([AllowEmptyString()][string] $Text)

    return [System.Net.WebUtility]::HtmlEncode($Text)
}

function ConvertTo-InlineHtml {
    param([AllowEmptyString()][string] $Text)

    $links = New-Object System.Collections.Generic.List[string]

    $working = [regex]::Replace(
        $Text,
        '\[([^\]]+)\]\((https?://[^)]+)\)',
        {
            param($match)
            $label = ConvertTo-HtmlEncoded -Text $match.Groups[1].Value
            $href = ConvertTo-HtmlEncoded -Text $match.Groups[2].Value
            $token = 'DASHLINK' + $links.Count
            $links.Add("<a href=`"$href`" target=`"_blank`" rel=`"noreferrer`">$label</a>")
            return $token
        }
    )

    $working = [regex]::Replace(
        $working,
        '(?<![="])(https?://[^\s<]+)',
        {
            param($match)
            $url = $match.Value.TrimEnd('.', ',', ';')
            $suffix = $match.Value.Substring($url.Length)
            $href = ConvertTo-HtmlEncoded -Text $url
            $token = 'DASHLINK' + $links.Count
            $links.Add("<a href=`"$href`" target=`"_blank`" rel=`"noreferrer`">$href</a>")
            return ($token + $suffix)
        }
    )

    $html = ConvertTo-HtmlEncoded -Text $working
    $html = [regex]::Replace($html, '\*\*([^*]+)\*\*', '<strong>$1</strong>')
    $html = [regex]::Replace($html, '`([^`]+)`', '<code>$1</code>')

    for ($index = 0; $index -lt $links.Count; $index++) {
        $html = $html.Replace(('DASHLINK' + $index), $links[$index])
    }

    return $html
}

function ConvertFrom-MarkdownReport {
    param([Parameter(Mandatory)][string] $Markdown)

    $lines = $Markdown -split "\r?\n"
    $result = New-Object System.Collections.Generic.List[string]
    $inList = $false

    foreach ($line in $lines) {
        if ($line -match '^\s*#\s+') {
            continue
        }

        if ($line -match '^\s*##\s+(.+)$') {
            if ($inList) {
                $result.Add('</ul>')
                $inList = $false
            }
            $result.Add('<h2>' + (ConvertTo-InlineHtml -Text $Matches[1]) + '</h2>')
            continue
        }

        if ($line -match '^\s*-\s+(.+)$') {
            if (-not $inList) {
                $result.Add('<ul>')
                $inList = $true
            }
            $result.Add('<li>' + (ConvertTo-InlineHtml -Text $Matches[1]) + '</li>')
            continue
        }

        if ([string]::IsNullOrWhiteSpace($line)) {
            if ($inList) {
                $result.Add('</ul>')
                $inList = $false
            }
            continue
        }

        if ($inList) {
            $result.Add('</ul>')
            $inList = $false
        }

        if ($line -match '^\s*\*\*([^*]+)\*\*\s*$') {
            $result.Add('<h2>' + (ConvertTo-InlineHtml -Text $Matches[1]) + '</h2>')
        }
        else {
            $result.Add('<p>' + (ConvertTo-InlineHtml -Text $line.Trim()) + '</p>')
        }
    }

    if ($inList) {
        $result.Add('</ul>')
    }

    return ($result -join [Environment]::NewLine)
}

function Get-ReportTags {
    param([Parameter(Mandatory)][string] $Text)

    $rules = [ordered]@{
        'OpenAI' = 'OpenAI|Codex|Agents SDK'
        'Anthropic' = 'Anthropic|Claude'
        'Google' = 'Google|Gemini'
        'AWS' = 'AWS|Bedrock|AgentCore'
        'Microsoft' = 'Microsoft|Semantic Kernel|Agent Framework'
        'Research' = 'arXiv|Hugging Face|paper|research|benchmark'
        'Safety' = 'security|safety|sandbox|governance|FedRAMP|risk'
        'Thai' = 'Thai Ecosystem|Techsauce|TechTalkThai|Blognone|DataRockie'
        'Prompting' = 'prompt|prompting|system prompt|few-shot|chain-of-thought|instruction'
        'Skills' = 'skill|skills|agent skill|tool skill|capability'
        'Workflow' = 'workflow|framework|LangGraph|CrewAI|AutoGen|orchestration|human-in-the-loop'
    }

    $tags = New-Object System.Collections.Generic.List[string]
    foreach ($rule in $rules.GetEnumerator()) {
        if ($Text -match $rule.Value) {
            $tags.Add($rule.Key)
        }
    }

    return @($tags)
}

function Get-ReportSummary {
    param([Parameter(Mandatory)][string] $Markdown)

    $lines = $Markdown -split "\r?\n"
    $inFirstSection = $false
    $foundFirstSection = $false

    foreach ($line in $lines) {
        if ($line -match '^\s*##\s+') {
            if (-not $foundFirstSection) {
                $inFirstSection = $true
                $foundFirstSection = $true
            }
            else {
                $inFirstSection = $false
            }
            continue
        }

        if ($inFirstSection -and -not [string]::IsNullOrWhiteSpace($line)) {
            $summary = $line -replace '^\s*-\s*', ''
            $summary = $summary -replace '\[([^\]]+)\]\([^)]+\)', '$1'
            $summary = $summary -replace '\*\*', ''
            $summary = $summary -replace '`', ''
            if ($summary.Length -gt 170) {
                return ($summary.Substring(0, 167) + '...')
            }
            return $summary
        }
    }

    return 'Daily Agentic AI report'
}

function New-DailyHtml {
    param(
        [Parameter(Mandatory)][string] $Date,
        [Parameter(Mandatory)][string] $Body,
        [Parameter(Mandatory)][string[]] $Tags,
        [Parameter(Mandatory)][string] $SourceFileName
    )

    $tagMarkup = ($Tags | ForEach-Object {
            '<span class="tag">' + (ConvertTo-HtmlEncoded -Text $_) + '</span>'
        }) -join ''

    return @"
<!doctype html>
<html lang="th">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Agentic AI News - $Date</title>
  <style>
    :root { --ink:#142438; --muted:#64748b; --line:#e2e8f0; --accent:#1667d9; --tag:#edf3fb; }
    * { box-sizing:border-box; }
    [hidden] { display:none !important; }
    body { margin:0; padding:24px 26px 42px; color:var(--ink); background:#fff; font-family:"Segoe UI",Tahoma,Arial,sans-serif; line-height:1.6; }
    header { border-bottom:1px solid var(--line); padding-bottom:16px; margin-bottom:18px; }
    h1 { margin:0 0 7px; font-size:1.48rem; letter-spacing:-.02em; }
    h2 { font-size:1.12rem; color:#173a67; margin:24px 0 8px; }
    p { margin:10px 0; }
    ul { padding-left:25px; margin:8px 0; }
    li { margin:8px 0; }
    a { color:var(--accent); text-decoration:none; overflow-wrap:anywhere; }
    a:hover { text-decoration:underline; }
    code { padding:2px 5px; background:#f0f4f9; border-radius:5px; font-size:.91em; }
    .tags { display:flex; flex-wrap:wrap; gap:6px; margin-top:10px; }
    .tag { padding:3px 10px; border-radius:999px; font-size:.78rem; color:#4a5e76; background:var(--tag); }
    .source { color:var(--muted); font-size:.83rem; margin-top:8px; }
    @media (max-width:640px) { body { padding:17px 15px 30px; } }
  </style>
</head>
<body>
  <header>
    <h1>Agentic AI News Radar - $Date</h1>
    <div class="tags">$tagMarkup</div>
    <div class="source">Generated from sources/$SourceFileName</div>
  </header>
  <main>
    $Body
  </main>
</body>
</html>
"@
}

$resolvedSourcesDirectory = (Resolve-Path -LiteralPath $SourcesDirectory).Path
if (-not (Test-Path -LiteralPath $DailyDirectory)) {
    New-Item -ItemType Directory -Path $DailyDirectory -Force | Out-Null
}

$reports = Get-ChildItem -LiteralPath $resolvedSourcesDirectory -Filter 'agentic-ai-news-????-??-??.md' -File |
    Sort-Object -Property Name -Descending

if ($reports.Count -eq 0) {
    throw "No daily Markdown reports found in $resolvedSourcesDirectory"
}

$utf8WithBom = New-Object System.Text.UTF8Encoding($true)
$entries = New-Object System.Collections.Generic.List[string]
$allTags = New-Object System.Collections.Generic.List[string]

foreach ($report in $reports) {
    if ($report.BaseName -notmatch '^agentic-ai-news-(\d{4}-\d{2}-\d{2})$') {
        continue
    }

    $date = $Matches[1]
    $raw = Get-Content -LiteralPath $report.FullName -Raw -Encoding UTF8
    $body = ConvertFrom-MarkdownReport -Markdown $raw
    $tags = @(Get-ReportTags -Text $raw)
    $summary = Get-ReportSummary -Markdown $raw
    foreach ($tag in $tags) {
        if (-not $allTags.Contains($tag)) {
            $allTags.Add($tag)
        }
    }

    $dailyFileName = $report.BaseName + '.html'
    $dailyPath = Join-Path -Path $DailyDirectory -ChildPath $dailyFileName
    $dailyHtml = New-DailyHtml -Date $date -Body $body -Tags $tags -SourceFileName $report.Name
    [System.IO.File]::WriteAllText($dailyPath, $dailyHtml, $utf8WithBom)

    $tagMarkup = ($tags | ForEach-Object {
            '<span class="tag">' + (ConvertTo-HtmlEncoded -Text $_) + '</span>'
        }) -join ''
    $tagValue = ConvertTo-HtmlEncoded -Text (($tags -join ' ').ToLowerInvariant())
    $searchValue = ConvertTo-HtmlEncoded -Text (($date + ' ' + ($tags -join ' ') + ' ' + $summary).ToLowerInvariant())
    $summaryHtml = ConvertTo-HtmlEncoded -Text $summary
    $relativeDailyPath = 'daily/' + $dailyFileName

    $entries.Add(@"
<button class="entry" type="button" data-page="$relativeDailyPath" data-date="$date" data-tags="$tagValue" data-search="$searchValue">
  <time datetime="$date">$date</time>
  <span class="tags">$tagMarkup</span>
  <span class="summary">$summaryHtml</span>
</button>
"@)
}

$latestDate = $reports[0].BaseName.Replace('agentic-ai-news-', '')
$latestPage = 'daily/' + $reports[0].BaseName + '.html'
$reportCount = $entries.Count
$renderedEntries = $entries -join [Environment]::NewLine
$tagButtons = ($allTags | Sort-Object | ForEach-Object {
        $label = ConvertTo-HtmlEncoded -Text $_
        $value = ConvertTo-HtmlEncoded -Text $_.ToLowerInvariant()
        "<button class=`"chip`" type=`"button`" data-tag=`"$value`">$label</button>"
    }) -join [Environment]::NewLine
$generatedAt = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')

$html = @"
<!doctype html>
<html lang="th">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Agentic AI News Radar</title>
  <style>
    :root { --bg:#f4f7fb; --panel:#fff; --ink:#132134; --muted:#637286; --line:#e1e8f0; --accent:#1667d9; --accent2:#e9f1ff; --tag:#eef3fa; --shadow:0 10px 32px rgba(20,34,56,.07); }
    * { box-sizing:border-box; }
    [hidden] { display:none !important; }
    body { margin:0; background:var(--bg); color:var(--ink); font-family:"Segoe UI",Tahoma,Arial,sans-serif; }
    .page { max-width:1400px; margin:0 auto; padding:23px 18px 34px; }
    .hero { display:flex; justify-content:space-between; gap:20px; align-items:end; background:linear-gradient(135deg,#12284a,#165aba); color:#fff; padding:22px 25px; border-radius:19px; box-shadow:var(--shadow); }
    h1 { margin:0 0 4px; letter-spacing:-.03em; font-size:clamp(1.48rem,2.4vw,2.12rem); }
    .hero p { margin:0; color:#d8e5ff; }
    .stats { display:flex; gap:11px; flex-wrap:wrap; }
    .stat { border:1px solid rgba(255,255,255,.25); border-radius:12px; padding:8px 12px; min-width:112px; background:rgba(255,255,255,.09); }
    .stat b { display:block; font-size:1.05rem; }
    .stat span { color:#d8e5ff; font-size:.77rem; }
    .filters { display:flex; gap:8px; flex-wrap:wrap; margin:16px 0 12px; align-items:center; }
    #search { min-width:250px; flex:1 1 300px; padding:11px 13px; border-radius:11px; border:1px solid var(--line); background:#fff; font-size:.94rem; }
    .chip, .clear { cursor:pointer; border:1px solid var(--line); background:#fff; color:var(--ink); border-radius:999px; padding:7px 12px; }
    .chip.active { color:var(--accent); background:var(--accent2); border-color:#b9d3fa; font-weight:600; }
    .results { color:var(--muted); font-size:.87rem; margin:0 0 11px; }
    .layout { display:grid; grid-template-columns:minmax(285px,370px) 1fr; gap:13px; height:calc(100vh - 235px); min-height:520px; }
    .list { overflow:auto; display:grid; gap:8px; align-content:start; padding-right:3px; }
    .entry { display:block; width:100%; text-align:left; border:1px solid var(--line); border-radius:13px; padding:12px; background:var(--panel); cursor:pointer; color:var(--ink); }
    .entry:hover, .entry.active { border-color:#b4cff7; background:#f7faff; }
    .entry time { display:block; font-weight:700; font-size:.97rem; margin-bottom:6px; }
    .tags { display:flex; flex-wrap:wrap; gap:5px; }
    .tag { background:var(--tag); color:#506176; border-radius:999px; padding:2px 8px; font-size:.72rem; }
    .summary { display:block; color:var(--muted); font-size:.82rem; line-height:1.42; margin-top:8px; }
    .reader { background:#fff; border:1px solid var(--line); border-radius:16px; overflow:hidden; box-shadow:0 2px 8px rgba(25,40,61,.03); }
    #reportFrame { width:100%; height:100%; border:0; background:#fff; }
    .empty { display:none; color:var(--muted); text-align:center; padding:22px; background:#fff; border-radius:13px; }
    footer { color:var(--muted); margin-top:14px; font-size:.79rem; }
    @media (max-width:850px) { .hero { display:block; } .stats { margin-top:17px; } .layout { display:block; height:auto; } .list { max-height:370px; margin-bottom:12px; } .reader { height:70vh; min-height:470px; } }
  </style>
</head>
<body>
  <main class="page">
    <section class="hero">
      <div>
        <h1>Agentic AI News Radar</h1>
        <p>Lightweight index with daily HTML reader pages.</p>
      </div>
      <div class="stats">
        <div class="stat"><b>$reportCount</b><span>Daily pages</span></div>
        <div class="stat"><b>$latestDate</b><span>Latest</span></div>
        <div class="stat"><b>sources/</b><span>Markdown truth</span></div>
      </div>
    </section>
    <section class="filters" aria-label="Filters">
      <input id="search" type="search" placeholder="Search headline: MCP, Codex, AWS, Thai..." aria-label="Search report summaries">
      <button class="clear" type="button" id="clear">All</button>
      $tagButtons
    </section>
    <div class="results" id="results"></div>
    <section class="layout">
      <nav class="list" id="list" aria-label="Daily reports">
        $renderedEntries
        <div class="empty" id="empty">No reports match this filter.</div>
      </nav>
      <section class="reader" aria-label="Selected daily report">
        <iframe id="reportFrame" title="Daily Agentic AI report" src="$latestPage"></iframe>
      </section>
    </section>
    <footer>Generated $generatedAt from sources/*.md. The index keeps only dates, tags, and short summaries.</footer>
  </main>
  <script>
    (() => {
      const entries = [...document.querySelectorAll('.entry')];
      const frame = document.getElementById('reportFrame');
      const search = document.getElementById('search');
      const chips = [...document.querySelectorAll('.chip')];
      const results = document.getElementById('results');
      const empty = document.getElementById('empty');
      let tag = '';
      let selected = entries[0];
      function openEntry(entry) {
        if (!entry) return;
        entries.forEach(item => item.classList.toggle('active', item === entry));
        selected = entry;
        frame.src = entry.dataset.page;
      }
      function apply() {
        const q = search.value.trim().toLowerCase();
        let shown = [];
        entries.forEach(entry => {
          const matchesText = !q || entry.dataset.search.includes(q);
          const matchesTag = !tag || entry.dataset.tags.split(' ').includes(tag);
          const visible = matchesText && matchesTag;
          entry.hidden = !visible;
          if (visible) shown.push(entry);
        });
        results.textContent = shown.length + ' of ' + entries.length + ' daily pages shown';
        empty.style.display = shown.length ? 'none' : 'block';
        if (shown.length && (!selected || selected.hidden)) openEntry(shown[0]);
      }
      entries.forEach(entry => entry.addEventListener('click', () => openEntry(entry)));
      search.addEventListener('input', apply);
      chips.forEach(chip => chip.addEventListener('click', () => {
        tag = tag === chip.dataset.tag ? '' : chip.dataset.tag;
        chips.forEach(item => item.classList.toggle('active', item.dataset.tag === tag));
        apply();
      }));
      document.getElementById('clear').addEventListener('click', () => {
        tag = '';
        search.value = '';
        chips.forEach(item => item.classList.remove('active'));
        apply();
      });
      openEntry(selected);
      apply();
    })();
  </script>
</body>
</html>
"@

$outputDirectory = Split-Path -Parent $OutputPath
if (-not (Test-Path -LiteralPath $outputDirectory)) {
    New-Item -ItemType Directory -Path $outputDirectory -Force | Out-Null
}

[System.IO.File]::WriteAllText($OutputPath, $html, $utf8WithBom)

Write-Output "Dashboard generated: $OutputPath"
Write-Output "Daily pages generated: $reportCount"
Write-Output "Markdown sources: $resolvedSourcesDirectory"
