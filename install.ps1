# ZipLoot Codespace Windows Installer Helper
try {
    Write-Host "==============================================" -ForegroundColor Green
    Write-Host "[ZipLoot] Codespaces Windows Configurator" -ForegroundColor Green
    Write-Host "==============================================" -ForegroundColor Green

    $scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
    $projectFolder = Join-Path $pwd "codespace-windows-setup"
    if (Test-Path $projectFolder) {
        Write-Host "Folder codespace-windows-setup already exists." -ForegroundColor Yellow
    } else {
        New-Item -ItemType Directory -Path $projectFolder -ErrorAction SilentlyContinue | Out-Null
    }

    Copy-Item -Path "$scriptDir\\docker-compose.yml" -Destination "$projectFolder\\docker-compose.yml" -Force

    Write-Host "[SUCCESS] Setup files generated!" -ForegroundColor Green
    Write-Host "Please follow the instructions in the README to initialize your Codespace VM." -ForegroundColor Yellow
    Read-Host "Press Enter to exit..."
} catch {
    Write-Host "[ERROR] Setup failed: $_" -ForegroundColor Red
    Read-Host "Press Enter to exit..."
}
