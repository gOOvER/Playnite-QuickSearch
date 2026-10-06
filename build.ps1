param([string]$Configuration = 'Release')
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot

Write-Host "==> Building QuickSearch-NG ($Configuration)..." -ForegroundColor Cyan
dotnet build (Join-Path $root 'source\QuickSearch.csproj') -c $Configuration -m:4
if ($LASTEXITCODE -ne 0) { throw "Build failed." }

$outDir = Join-Path $root "source\bin\$Configuration\net462"
$toolbox = "$env:LOCALAPPDATA\Playnite\Toolbox.exe"
if (Test-Path $toolbox) {
    Write-Host "==> Packaging extension (.pext)..." -ForegroundColor Cyan
    & $toolbox pack $outDir $root
    if ($LASTEXITCODE -ne 0) { throw "Packaging failed." }
    Write-Host "==> Successfully packaged QuickSearch-NG .pext in $root" -ForegroundColor Green
} else {
    Write-Host "Toolbox.exe not found at $toolbox; skipping packaging." -ForegroundColor Yellow
}
