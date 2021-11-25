# .vim

### 

This repository contains my current `neovim` setup. It should be compatible with the latest versions of `neovim` and `vim`. 

Features:

- Completely automated install will download and configure any missing plugins using [vim-plug](https://github.com/junegunn/vim-plug)
- Full IntelliSense engine provided by [coc.nvim](https://github.com/neoclide/coc.nvim) 
- Uses `<space>` as leader, with support for chorded keys using [arpeggio](https://github.com/kana/vim-arpeggio)
- Support for `C-w` movement across panes when used with tmux (requires `vim-tmux-navigator` plugin
- Much more...





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





