Clear-Host
Write-Host "Hello s0nt3k!" -ForegroundColor Green
$Date = Get-Date
Write-Host "Today is $($Date.ToString('MMMM dd, yyyy'))" -ForegroundColor Cyan
Write-Host "Welcome to Scriptify, your ultimate PowerShell script generator!" -ForegroundColor Yellow
Write-Host "This script will help you create a new PowerShell script with a greeting message and the current date." -ForegroundColor Magenta
Write-Host "Let's get started!" -ForegroundColor Green
Write-Host "Please enter the name of your script (without extension):" -ForegroundColor Cyan
$ScriptName = Read-Host "Script Name"
$ScriptPath = "$PSScriptRoot\$ScriptName.ps1"
if (Test-Path -Path $ScriptPath) {
    Write-Host "A script with the name '$ScriptName.ps1' already exists. Please choose a different name." -ForegroundColor Red
} else {
    $ScriptContent = @"
Clear-Host
Write-Host "Hello s0nt3k!" -ForegroundColor Green
\$Date = Get-Date
Write-Host "Today is \$($Date.ToString('MMMM dd, yyyy'))" -ForegroundColor Cyan
Write-Host "Welcome to Scriptify, your ultimate PowerShell script generator!" -ForegroundColor Yellow
Write-Host "This script will help you create a new PowerShell script with a greeting message
and the current date." -ForegroundColor Magenta
Write-Host "Let's get started!" -ForegroundColor Green
"@
    $ScriptContent | Out-File -FilePath $ScriptPath -Encoding UTF8
    Write-Host "Your script '$ScriptName.ps1' has been created successfully at '$ScriptPath'." -ForegroundColor Green
}
