# Function to open my projects
jgproj() {
    cd ~/font/my-projects/"$1" || return
    tmux new-session -A -s "$1" nvim
}

# Function to open voluntary projects
volproj() {
    cd ~/font/voluntary-projects/"$1" || return
    tmux new-session -A -s "$1" nvim

}

createvolproj() {
    mkdir ~/font/voluntary-projects/"$1"
}

createjgproj() {
    mkdir ~/font/my-projects/"$1"
}

nvimconfig() {
    cd ~/.config/nvim || return
    tmux new-session -A -s "nvimconfig" nvim
}

# Completion for my projects
_jgproj_complete() {
    _files -W ~/font/my-projects/
}

# Completion for voluntary projects
_volproj_complete() {
    _files -W ~/font/voluntary-projects/
}

# Register the completion functions with zsh's compdef
compdef _jgproj_complete jgproj
compdef _volproj_complete volproj

# Additional aliases
alias zconfig='nvim ~/.zshrc'
alias zfconfig='nvim ~/.myfuncs.zsh'
alias zsource='source ~/.zshrc'
alias i3config='nvim ~/.config/i3/config'
alias active-services='systemctl list-units --type=service --state=running'
alias shellconfig='nvim ~/.config/alacritty/alacritty.toml'
alias checkrecentpacks='expac -H M "%l\t%n" | sort -r | head -n 20'
alias checkpacks='expac -H M "%m\t%n" | sort -h'
alias deletepack='sudo pacman -Rns'
alias tmuxnew='tmux new -s'
alias tmuxattach='tmux attach -t'
alias reboot-uefi='sudo systemctl reboot --firmware-setup'
