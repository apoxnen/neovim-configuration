# My neovim setup

This repo exists for me to be able to replicate my vim setup easily in new environments.

## Installation

### macOS

1. Install neovim with homebrew:
```
brew install neovim
```
2. Download vim-plug by running the command below:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
3. clone this repo to the nvim config folder by running the following command:
```
git clone https://github.com/apoxnen/neovim-configuration.git
cp neovim-configuration/init.vim .config/nvim/init.vim
rm -rf neovim-configuration

```
4. Open nvim and install plugins with ```:PlugInstall```

---

### Windows

1. Install neovim with choco:
```
choco install neovim
```
2. Download vim-plug by running the command below in powershell:
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```
3. clone this repo to the nvim folder inside AppData by running the following in bash:
```
cd ~/AppData/Local/nvim
git clone https://github.com/apoxnen/neovim-configuration.git

```
4. Open nvim and install plugins with ```:PlugInstall```
