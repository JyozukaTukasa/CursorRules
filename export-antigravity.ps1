# Antigravity Cursor Rules - Export Script
# このスクリプトは、Cursorルールをzip形式でエクスポートします。
# 使用方法: .\export-antigravity.ps1

$ErrorActionPreference = "Stop"

# 設定
$exportName = "antigravity-cursor-rules"
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$zipFileName = "${exportName}-${timestamp}.zip"
$tempDir = "$env:TEMP\$exportName"

Write-Host "=== Antigravity Cursor Rules Exporter ===" -ForegroundColor Cyan
Write-Host ""

# 一時ディレクトリの作成
if (Test-Path $tempDir) {
    Remove-Item -Recurse -Force $tempDir
}
New-Item -ItemType Directory -Path $tempDir | Out-Null

# エクスポート対象のコピー
Write-Host "[1/4] Copying .cursor directory..." -ForegroundColor Yellow
Copy-Item -Recurse ".cursor" "$tempDir\.cursor"

Write-Host "[2/4] Copying .github directory..." -ForegroundColor Yellow
if (Test-Path ".github") {
    Copy-Item -Recurse ".github" "$tempDir\.github"
}

Write-Host "[3/4] Copying documentation files..." -ForegroundColor Yellow
# GEMINI.mdのテンプレートをコピー（存在する場合）
if (Test-Path "GEMINI.md") {
    Copy-Item "GEMINI.md" "$tempDir\GEMINI.md.template"
}

# READMEをコピー
if (Test-Path "ANTIGRAVITY_README.md") {
    Copy-Item "ANTIGRAVITY_README.md" "$tempDir\README.md"
}

Write-Host "[4/4] Creating zip archive..." -ForegroundColor Yellow
# ZIP作成
Compress-Archive -Path "$tempDir\*" -DestinationPath $zipFileName -Force

# 一時ディレクトリの削除
Remove-Item -Recurse -Force $tempDir

Write-Host ""
Write-Host "=== Export Complete ===" -ForegroundColor Green
Write-Host "Output: $zipFileName" -ForegroundColor Cyan
Write-Host ""
Write-Host "配布手順:" -ForegroundColor White
Write-Host "  1. このzipファイルをチームメンバーに共有"
Write-Host "  2. 各プロジェクトのルートで解凍"
Write-Host "  3. Cursorを再起動"
Write-Host ""
