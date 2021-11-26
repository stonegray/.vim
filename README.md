# .vim

> My neovim/vim configuration

![](https://shields.io/tokei/lines/github/stonegray/.vim) ![](https://shields.io/static/v1?label=platform&message=linux%20|%20macOS&color=lightgray) ![](https://shields.io/static/v1?label=licence&message=MIT&color=green)

![](https://gist.githubusercontent.com/stonegray/35673fda8c406169c32bf416748739b3/raw/6fe02903917e1dfcc45ae02e48b7952ebb0ade57/screenshot.png)

This repository contains my current configuration for `neovim` and `vim`.  

Features:

- Completely automated install, automatic download and configuration of any missing plugins using [vim-plug](https://github.com/junegunn/vim-plug)
- Full IntelliSense engine provided by [coc.nvim](https://github.com/neoclide/coc.nvim) 
- Uses `<space>` as leader, with support for chorded keys using [arpeggio](https://github.com/kana/vim-arpeggio)
- Support for `C-w` movement across panes when used with tmux (requires `vim-tmux-navigator` plugin; see https://github.com/stonegray/dotfiles)
- Much more...

This repository exists to allow me to easily clone my configuration to machines, and to allow others to see how my setup works and copy bits to help build their own config. I don't recommend cloning and using it as-is, as none of the keybindings or features are documented outside of the script itself. 

### Requirements

- `vim` 8.2+ or `nvim` 0.5+
- `node`/`npm`, `yarn` recommended

This rc is mostly used on macOS, although is expected to work fine on *nix. Untested and probably unsupported on Windows, maybe time to [upgrade your OS?](https://wiki.gentoo.org/wiki/Handbook:AMD64/Full/Installation)



### Install (neovim)

Clone the repository to `~/.vim`:

```bash
git clone git@github.com:stonegray/.vim.git ~/.vim
```

Add the following line to your `~/. config/nvim/init`:

```vimscript
source ~/.vim/main.vim
```



### Install (vim)

Clone the repository to `~/.vim`:

```bash
git clone git@github.com:stonegray/.vim.git ~/.vim
```

Replace your `~/.vimrc` with the following:

```vimscript
source ~/.vim/main.vim
```



<br/><br/><br/>

<br/>



:wq :smile:
