<h1><medium><span style="color: rgb(31, 35, 40); font-family: -apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;; font-size: 16px; font-style: normal; font-weight: bold; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; white-space: normal; background-color: rgb(255, 255, 255); display: inline ! important; float: none;">My
custom Wndows Termanl setup using Oh-My-Posh</span></medium></h1>

<b>My Windows Terminal setup using Oh-My-Posh, PowerShellGet, PSReadLine, and Terminal Icons</b>

**Prerequisites**
> - [Windows package manager](https://docs.microsoft.com/en-us/windows/package-manager/winget/): `winget`
>    - Already installed by default on Windows 11
> - [New Windows PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2#installing-from-the-microsoft-store)
>    - Install from Microsoft Store
>   - Settings, Profiles, Add New Profile, PowerShell1. Set default terminal application to Windows Terminal.
   
- Settings, Startup.
 <img width="300" alt="terminal-startup" src="https://user-images.githubusercontent.com/2836367/144486312-ab274af9-0e61-496b-8f6f-40738cadd9ed.png" />
 
2. Install [Caskaydia Cove Nerd Font](https://www.nerdfonts.com/font-downloads) for Glyphs
   - Extract and copy to `c:\windows\fonts`
   - Settings, Profiles, PowerShell, Appearance, Fontface,
     select `CaskaydiaCove NF`
   - VS Code Settings, Text Editor, Font, add `'CaskaydiaCove NF',` 
3. Install [Oh My Posh for Windows](https://ohmyposh.dev/docs/windows).
   - Install Oh My Posh using winget with the command: `winget install JanDeDobbeleer.OhMyPosh`
   - Browse prompt themes: https://ohmyposh.dev/docs/themes
   - Choose a theme and edit your PowerShell `$PROFILE`: `code $PROFILE`
   - Paste (replacing theme): `oh-my-posh --init --shell pwsh --config ~/AppData/Local/Programs/oh-my-posh/themes/jandedobbeleer.omp.json | Invoke-Expression`
4. Install [Terminal Icons](https://github.com/devblackops/Terminal-Icons)
   - `Install-Module -Name Terminal-Icons -Repository PSGallery`
   - `code $profile`, paste `Import-Module -Name Terminal-Icons`
> - [gsudo](https://github.com/gerardog/gsudo#installation) for command elevation: `winget install gerardog.gsudo`
>    - Start commands with `sudo`
