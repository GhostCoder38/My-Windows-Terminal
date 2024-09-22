#Sets User Greeting Based on Time of Day
$Hour = (Get-Date).Hour
If ($Hour -lt 12) {"Good Morning Casey"}
ElseIf ($Hour -gt 17) {"Good Eventing Casey"}
Else {"Good Afternoon Casey"}

#Install and Import Terminal-Icons
Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module -Name Terminal-Icons

# Style default PowerShell Console
$shell = $Host.UI.RawUI
$shell.WindowTitle= "PowerShell 7.4.2"
$shell.BackgroundColor = "Black"
$shell.ForegroundColor = "White"

#Set Prompt
oh-my-posh init pwsh --config 'C:\Users\casey\AppData\Local\Programs\oh-my-posh\themes\remk.omp.json' | Invoke-Expression

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Enhanced PowerShell Experience
Set-PSReadLineOption -Colors @{
    Command = 'Yellow'
    Parameter = 'Green'
    String =  'DarkCyan'
}

# Navigation Shortcuts
function docs { Set-Location -Path $HOME\Documents }
function dtop { Set-Location -Path $HOME\Desktop }
function downloads { Set-Location -Path $HOME\Downloads}
function G {Set-Location -Path G:\}
function D {Set-Location -Path D:\}
Set-Alias -Name np+ -Value 'C:\Program Files\Notepad++/Notepad++.exe'

# Quick Access to System Information
function sysinfo { Get-ComputerInfo }

# Clipboard Utilities
function cpy { Set-Clipboard $args[0] }
function pst { Get-Clipboard }

#View History
Function Get-History-Full {Get-Content (Get-PSReadlineOption).HistorySavePath}
Set-Alias -name hist -value get-history-full -Option AllScope

if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}

# Set PSReadline Functions
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

