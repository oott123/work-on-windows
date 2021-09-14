#!/bin/zsh

# You should install BurntToast in your windows first
# You should install and configure my fork of zsh-notify https://github.com/oott123/zsh-notify

# insert the follwing snippets BEFORE you load zsh-notify
zsh-notify() {
    cat - | /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe "New-BurntToastNotification -Text \"zsh $1\",   (Read-Host)" > /dev/null
}
