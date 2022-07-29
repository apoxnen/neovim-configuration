# My neovim setup

This repo exists for me to be able to replicate my vim setup easily in new environments.

## Installation

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
