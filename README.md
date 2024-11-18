# bassam.nvim

## Introduction

My own neovim configuration forked from kickstart.nvim

Key things to know:
* init.lua - loads keymaps/before, then plugins, then keymaps/after
* keymaps/before - contains general-purpose keymaps
* keymaps/after - contains plugin-specific keymaps

## Installation
#### Install commands

<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>

#### Clone bassam.nvim
```sh
git clone https://github.com/lightspeed3m/bassam.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

That's it!
