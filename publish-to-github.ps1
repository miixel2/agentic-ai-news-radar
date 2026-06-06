[CmdletBinding()]
param(
    [Parameter()]
    [string] $RepoName = 'agentic-ai-news-radar',

    [Parameter()]
    [ValidateSet('public', 'private')]
    [string] $Visibility = 'public',

    [Parameter()]
    [string] $Branch = 'main'
)

$ErrorActionPreference = 'Stop'

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw 'GitHub CLI (gh) was not found.'
}

& gh auth status
if ($LASTEXITCODE -ne 0) {
    throw 'GitHub CLI auth is not valid. Run: gh auth login -h github.com'
}

if (-not (Test-Path -LiteralPath '.git')) {
    & git init
}

& git branch -M $Branch
& git add .
& git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
    & git commit -m 'Publish Agentic AI News static site'
}

$repoExists = $false
& gh repo view $RepoName --json nameWithOwner | Out-Null
if ($LASTEXITCODE -eq 0) {
    $repoExists = $true
}

if (-not $repoExists) {
    $visibilityFlag = '--public'
    if ($Visibility -eq 'private') {
        $visibilityFlag = '--private'
    }
    & gh repo create $RepoName $visibilityFlag --source . --remote origin --push
}
else {
    $remoteUrl = (& gh repo view $RepoName --json sshUrl --jq '.sshUrl')
    $existingRemote = (& git remote)
    if ($existingRemote -contains 'origin') {
        & git remote set-url origin $remoteUrl
    }
    else {
        & git remote add origin $remoteUrl
    }
    & git push -u origin $Branch
}

Write-Output "Published repository: $RepoName"
Write-Output "Expected Pages URL: https://$(gh api user --jq '.login').github.io/$RepoName/"
