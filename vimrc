" �ҵ�GVim�����ļ�
" ���ߣ�Hi���ĵ�ʲ
" ��4�е�32��Ϊԭʼ��vimrc�ļ�
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""               �ҵĸ��Ի�����                    """"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���ñ��룬���������������
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif
" ����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ��������Ϣ����
language messages zh_CN.utf-8 

" ��ʾ�к�
set number

" �����������ɫ����
set guifont=Consolas:h12
colorscheme desert 

" �﷨����
syntax on

" ��������ŵ�ʱ���Զ�����
set smartindent

" ��tabת��Ϊ4���ո�
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set scrolloff=999

" ��ĳһ������ע�ͣ���ֹ��һ���Զ�����ע��
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" ����״̬��
set laststatus=2
set statusline=
set statusline+=%-3.3n\                             " ����������
set statusline+=%f\                                 " �ļ���
set statusline+=%h%m%r%w                            " ״̬��־
set statusline+=\[%{strlen(&ft)?&ft:'none'}]        " �ļ�����
set statusline+=%=                                  " �Ҷ������������״̬
set statusline+=0x%-8B                              " ��괦�ַ���unicodeֵ
set statusline+=%-14(%l,%c%V%)                      " �кţ�
set statusline+=%<%P                                " ��괦���ļ���λ��(�ٷֱ�)

" �кţ����λ��
set ruler

" ��ʾδ��ɵ�����
set showcmd

" ������ģʽ���Ե�ǰ������ַ��������������صȴ��������
set incsearch

" ����ʱ���Դ�Сд
set ignorecase

" ������ģʽ��ʹ�� Tab �Զ���ȫ��ʱ�� ����ȫ����ʹ��һ��Ư���ĵ��в˵���ʽ��ʾ����
set wildmenu

" ��ʾ��������ģʽ
set showmode

" ���ô�����ʾ��С
set lines=35 columns=99

" ��ֹ��ʾ�˵���״̬��
set guioptions-=m
set guioptions-=T
