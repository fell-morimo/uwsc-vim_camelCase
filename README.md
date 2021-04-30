# uwsc-vim_camelCase

Windows10

1.ダウンロードしたファイルを下記のフォルダにコピーする。
{vimのインストールフォルダ}\vim{バージョン番号}\syntax\uwsc.vim

2.filetype.vimの編集
{vimのインストールフォルダ}\vim{バージョン番号}\filetype.vim

追加
au BufNewFile,BufRead *.uws self uwsc
