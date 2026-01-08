# 🐧 Gomes OS — I3 Dotfiles

> A clean, modular Linux desktop setup using **I3wm**, **Zsh**, and friends.
> Powered by vibes, keybinds, and probably too many config files.

## 🛠️ Dependencies

Make sure you have these installed before blaming the repo:

```bash
# Arch Linux (btw)
sudo pacman -S zsh kitty rofi wofi flameshot ttf-nerd-fonts-symbols ttf-fira-code feh
```

---

## 🚀 Installation

### 1️⃣ Clone the repository

```bash
git clone giturl ~/.gomes-os-i3
```

## I3 setup

Link i3 config files:

```bash
ln -s ~/.gomes-os-i3/config ~/.config/i3/config
```

## 🐚 Zsh Setup

Set Zsh as default shell:

```bash
chsh -s /bin/zsh
```

Enter the repo directory:

Link Zsh config files:

```bash
ln -s ~/.gomes-os-i3/zsh/.zshrc ~/.zshrc
```

Reload shell:

```bash
source ~/.zshrc
```

Install oh my zsh in repository directory:

```bash
cd ~/.gomes-os-i3
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install zsh plugins and powerlevel10k:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting && git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## 🧠 Tips

* All configs are **modular** using `source`
* Repo can live **anywhere**, just update the paths
* One typo can break everything — welcome to Linux 😌

---

## 📸 Screenshots

Coming soon (when it looks cool enough).

---

## ❤️ Credits

Built by João Gomes

---

Enjoy your setup — and if it breaks, it’s probably a missing semicolon 😉

