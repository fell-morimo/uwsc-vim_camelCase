"https://github.com/rmatttu/vim-uwsc
"上記をキャメルケースに変更させていただいたものとなります。
"----------------------------------------------------

" 構文
syn keyword uwscStatement           Dim Public CONST if then else ifb elseif endif select case default selend for next to in step while wend repeat until call break continue exit print and or xor mod procedure function fend result var def_dll option thread class endclass this global with endwith textblock endtextblock hashtbl try endtry except finally module endmodule exitexit
" ウィンドウ関連
syn keyword uwscWindowStatement     getId clkItem chkBtn ctrlWin sendStr getStr getItem getSlctLst setSlider getSlider sckey getAllWin status mouseorg peekColor chkImg saveImg muscur posacc
" ダイアログ・表示
syn keyword uwscDialog              input msgbox slctbox popupmenu balloon fukidasi stopform logprint monitor
" 制御関数
syn keyword uwscControll            exec sleep doscmd powerShell sound getTime poff kindofos cpuuserate getkeystate setHotkey lockhard lockhardex eval sensor
" システム関数
syn keyword uwscSystem              getCtlhnd idtohnd hndtoid varType
" ウィンドウ関数低レベル
syn keyword uwscInputControll       MMV BTN KBD ACW
" 文字操作
syn keyword uwscWordProcessor       copy pos length chknum val replace chgmoj trim format chr asc isunicode strconv token betweenstr copyb lengthb posb chrb ascb lengths
" 配列操作
syn keyword uwscArray               resize setclear shiftarray calcarray split join slice qsort
" ファイル
syn keyword uwscIO                  fopen fget fput fdelline fclose deleteFile getDir dropfile
" INIファイル
syn keyword uwscIni                 readini writeini deleteini
" COMオブジェクト
syn keyword uwscCOM                 createOleObj getActiveOleObj getOleItem oleEvent com_err_ign com_err_ret safeArray
" 音声認識・合成
syn keyword uwscAudio               speak recostate dictate
" IE操作関連
syn keyword uwscIE                  ieGetData ieSetData ieGetSrc ieSetSrc ieLink encode decode
" フォーム画面
syn keyword uwscForm                createForm getFormData setFormData
" Excel操作関連
syn keyword uwscExcel               xlOpen xlClose xlActivate xlSheet xlGetdata xlSetdata
" 数学関数
syn keyword uwscMath                random abs zcut int ceil round sqrt power exp ln logn sin cos tan arcsin arccos arctan
"特殊変数
syn keyword uwscSpecial             param_str[] all_win_id[] all_item_list[] getdir_files[] all_ole_item[] all_img_x[] all_img_y[] event_prm[] get_win_dir get_sys_dir get_cur_dir get_appdata_dir get_uwsc_dir get_uwsc_name get_uwsc_ver get_uwsc_pro g_img_x g_img_y g_screen_w g_screen_h g_screen_c g_mouse_x g_mouse_y com_err_flg try_errmsg try_errline hotkey_vk hotkey_mod g_time_*(gettime関数)
" 定数
syn keyword uwscConstant            true false null empty nothing err_value get_slider get_menu_hnd get_sysmenu_hnd activate close close2 hide show min max normal topmost notopmost topnoactv click down up left right middle wheel touch f_*(fopen/fget/fput関数) xl_*(xlopen) clk_*(clkitem) str_*(getstr/sendstr) btn_*(msgbox) slct_*(slctbox) itm_*(getitem) st_*(status) cur_*(muscur) acc_*(posacc) p_*(poff) tgl_*(getkeystate) get_*(getid) sc_*(strconv) mod_*(sethotkey) fom_*(createform/getformdata) code_*(encode) calc_*(calcarray) img_*(chkimg/saveimg) sld_*(getslider) mon_*(monitor) col_*(peekcolor) morg_*(mouseorg) lock_*(lockhardex) hash_*(hashtbl) var_*(vartype) snsr_*(sensor) qsrt_*(qsort)

" 定義済み仮想キー
" TODO 作成する


syn match   uwscCharacter           "'[^']*'" contains=javaSpecialChar,javaSpecialCharError
syn match   uwscCharacter           "'\\''" contains=javaSpecialChar
syn match   uwscCharacter           "'[^\\]'"
syn match   uwscNumber              "\<\(0[bB][0-1]\+\|0[0-7]*\|0[xX]\x\+\|\d\(\d\|_\d\)*\)[lL]\=\>"
syn match   uwscNumber              "\(\<\d\(\d\|_\d\)*\.\(\d\(\d\|_\d\)*\)\=\|\.\d\(\d\|_\d\)*\)\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\="
syn match   uwscNumber              "\<\d\(\d\|_\d\)*[eE][-+]\=\d\(\d\|_\d\)*[fFdD]\=\>"
syn match   uwscNumber              "\<\d\(\d\|_\d\)*\([eE][-+]\=\d\(\d\|_\d\)*\)\=[fFdD]\>"
syn match   uwscLineComment         "//.*"


hi def link uwscStatement           Conditional
hi def link uwscWindowStatement     Function
hi def link uwscDialog              Function
hi def link uwscControll            Function
hi def link uwscSystem              Function
hi def link uwscInputControll       Function
hi def link uwscWordProcessor       Function
hi def link uwscArray               Function
hi def link uwscIO                  Function
hi def link uwscIni                 Function
hi def link uwscCOM                 Function
hi def link uwscAudio               Function
hi def link uwscIE                  Function
hi def link uwscForm                Function
hi def link uwscExcel               Function
hi def link uwscMath                Function
hi def link uwscSpecial             Constant
hi def link uwscConstant            Constant
hi def link uwscCharacter           Character
hi def link uwscNumber              Number
hi def link uwscLineComment         Comment


let b:current_syntax = "uws"
