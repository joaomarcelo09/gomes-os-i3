# Function to open my projects
proj() {
    cd ~/font/"$1" || return
    tmux new-session -A -s "$1" nvim
}

createproj() {
    mkdir ~/font/"$1"
}

nvimconfig() {
    cd ~/.config/nvim || return
    tmux new-session -A -s "nvimconfig" nvim
}

# Completion for my projects
_proj_complete() {
    _files -W ~/font/
}

# Register the completion functions with zsh's compdef
compdef _proj_complete proj

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
