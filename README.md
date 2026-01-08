# 🐧 Gomes OS — Hyprland Dotfiles

> A clean, modular Linux desktop setup using **I3wm**, **Zsh**, and friends.
> Powered by vibes, keybinds, and probably too many config files.

## 🛠️ Dependencies

Make sure you have these installed before blaming the repo:

```bash
# Arch Linux (btw)
sudo pacman -S zsh kitty rofi wofi flameshot ttf-nerd-fonts-symbols ttf-fira-code
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
ln -s ~/.gomes-os-i3/i3/config ~/.config/i3/config
```

## 🐚 Zsh Setup

Set Zsh as default shell:

```bash
chsh -s /bin/zsh
```

Link Zsh config files:

```bash
ln -s ~/.gomes-os-i3/zsh/.zshrc ~/.zshrc
```

Reload shell:

```bash
source ~/.zshrc
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

