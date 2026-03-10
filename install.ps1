<#
.SYNOPSIS
    LyonShell installer - One command setup
.DESCRIPTION
    Downloads and installs LyonShell PowerShell profile.
    Backs up your existing profile before overwriting.
#>

$ErrorActionPreference = 'Stop'
$repo = "https://raw.githubusercontent.com/lyonzin/LyonShell/main"

Write-Host ""
Write-Host "  LyonShell Installer" -ForegroundColor Cyan
Write-Host "  ===================" -ForegroundColor DarkGray
Write-Host ""

# Backup existing profile
if (Test-Path $PROFILE) {
    $backup = "$PROFILE.bak.$(Get-Date -Format 'yyyyMMdd_HHmmss')"
    Copy-Item $PROFILE $backup -Force
    Write-Host "  [+] Backup: $backup" -ForegroundColor Green
}

# Ensure profile directory exists
$profileDir = Split-Path $PROFILE -Parent
if (-not (Test-Path $profileDir)) {
    New-Item -Path $profileDir -ItemType Directory -Force | Out-Null
    Write-Host "  [+] Created: $profileDir" -ForegroundColor Green
}

# Download profile
Write-Host "  [*] Downloading LyonShell..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "$repo/Microsoft.PowerShell_profile.ps1" -OutFile $PROFILE -UseBasicParsing
Write-Host "  [+] Installed to: $PROFILE" -ForegroundColor Green

Write-Host ""
Write-Host "  Done! Restart PowerShell to activate LyonShell." -ForegroundColor Cyan
Write-Host "  Type 'show-menu' to see all available commands." -ForegroundColor DarkGray
Write-Host ""
