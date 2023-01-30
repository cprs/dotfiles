# Terminal prompt
oh-my-posh --init --shell pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\mojada.omp.json' | Invoke-Expression

# Zoom meetings
function standup {start "zoommtg://zoom.us/join?action=join&confno=200913505&pwd=N1BoUU9LZXZhMnd4dDdCSUl1dGdMdz09"}
function ryan {start "zoommtg://zoom.us/join?action=join&confno=8052719819"}
function barry {start "zoommtg://zoom.us/join?action=join&confno=8328088128"}

# Support dotfiles repo
function dotfiles {git.exe --git-dir=$home/.dotfiles/ --work-tree=$home $args}

# Make Tab auto-complete behave more like Bash.
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Alias vi and vim to nvim if it's installed.
if ((Get-Command nvim -ErrorAction Ignore)) {
    if (-not (Get-Command vim -ErrorAction Ignore)) {
        Set-Alias vim nvim
    }
    if (-not (Get-Command vi -ErrorAction Ignore)) {
        Set-Alias vi vim
    }
    if (-not (Get-Command gvim -ErrorAction Ignore)) {
        Set-Alias gvim nvim-qt
    }
}

# Import posh-git if it's installed
If (Get-InstalledModule posh-git -ErrorAction silentlycontinue) {
  Import-Module posh-git
}
Else {
  Write-Host "posh-git not installed. Install it with:"
  Write-Host "PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force"
}
