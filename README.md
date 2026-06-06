# Agentic AI News Radar

Static archive for Thai Agentic AI news updates.

## Local Files

- `index.html` is the lightweight dashboard.
- `daily/` contains generated daily HTML pages.
- `sources/` contains the Markdown reports and is the source of truth.
- `build-dashboard.ps1` rebuilds daily pages and the dashboard from Markdown.

## Rebuild

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\build-dashboard.ps1
```

## Publish

After GitHub CLI authentication is valid:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\publish-to-github.ps1 -RepoName agentic-ai-news-radar -Visibility public
```

GitHub Pages will publish from the GitHub Actions workflow in `.github/workflows/deploy-pages.yml`.
