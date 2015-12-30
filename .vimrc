">>>>>>>>>>>>>>>>>>>>>>>>>> Vundle >>>>>>>>>>>>>>>>>>>>>>>>>

    set nocompatible              " be iMproved, required
    filetype off                  " required

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'user/L9', {'name': 'newL9'}
    call vundle#end()            " required
    filetype plugin indent on    " required

"<<<<<<<<<<<<<<<<<<<<<<<<<<<< Vundle <<<<<<<<<<<<<<<<<<<<<<<<

">>>>>>>>>>>>>>>>>>>>>>>>>>> Plugins >>>>>>>>>>>>>>>>>>>>>>>

    Plugin 'jelera/vim-javascript-syntax'
    Plugin 'pangloss/vim-javascript'
    Plugin 'nathanaelkane/vim-indent-guides'
    Plugin 'scrooloose/nerdtree'

"<<<<<<<<<<<<<<<<<<<<<<<<<< Plugins <<<<<<<<<<<<<<<<<<<<<<<<

">>>>>>>>>>>>>>>>>>>>>>>>> Conf YouCompleteMe >>>>>>>>>>>>>>

    let g:ycm_add_preview_to_completeopt=0
    let g:ycm_confirm_extra_conf=0
    set completeopt-=preview
    imap <Tab> <C-P>

"<<<<<<<<<<<<<<<<<<<<<<<<< Conf YouCompleteMe <<<<<<<<<<<<<

syntax on
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set softtabstop=2
set tabstop=2
colorscheme distinguished 
retab
set nu
set background=dark

vno v <esc>

function Hjs()
    let s:line=line(".")
    call setline(s:line, "/*")
    call append(s:line, " * @author : Augusto Monteiro")
    call append(s:line+1, " * @email  : augustomna2010@gmail.com")
    call append(s:line+2, " * @augustomna2010 ")
    call append(s:line+3, "*/")
    unlet s:line
endfunction

nnoremap <C-g> :NERDTree<CR>


autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS 
