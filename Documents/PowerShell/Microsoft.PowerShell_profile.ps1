# Terminal prompt
oh-my-posh --init --shell pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\takuya.omp.json' | Invoke-Expression

# Zoom meetings
function standup {start "zoommtg://zoom.us/join?action=join&confno=200913505&pwd=N1BoUU9LZXZhMnd4dDdCSUl1dGdMdz09"}
function ryan {start "zoommtg://zoom.us/join?action=join&confno=8052719819"}
function barry {start "zoommtg://zoom.us/join?action=join&confno=8328088128"}
function demo {start "zoommtg://zoom.us/join?action=join&confno=84294935166&pwd=VzBGMTY3V29ENDFaSThVSkZYNkE1QT09"}
function project-review {start "zoommtg://zoom.us/join?action=join&confno=87079793189&pwd=ZFBGSm1WMVIzVk52a1ozbjZnZ01lUT09"}
function cdt {start "zoommtg://zoom.us/join?action=join&confno=96155246494&pwd=RGFyNC9tNzdRN2JOVjlrODg0b201UT09 "}

# Support dotfiles repo
function dotfiles {git.exe --git-dir=$home/.dotfiles/ --work-tree=$home $args}

# Make Tab auto-complete behave more like Bash.
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

Set-Alias vim nvim
Set-Alias vi vim
Set-Alias gvim nvim-qt

Import-Module posh-git
