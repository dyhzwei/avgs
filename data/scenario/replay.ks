;===========================================================
; 回想モード画面作成
;===========================================================

; 解放コマンド
[setreplay name=replay1 storage=scene1.ks target=label_replay1]
[setreplay name=replay2 storage=scene1.ks target=label_replay2]


;-----------------------------------------------------------
*start
;-----------------------------------------------------------

[layopt layer=message0 visible=false]
[layopt layer=1 visible=true]
[freelayer layer=0]
[freelayer layer=1]
[clearfix]
[cm]
[bg storage=../image/append_theme/bg_recollection.png time=700]
[iscript]
tf.page = 0
tf.selected_replay_obj = "" //選択されたリプレイを一時的に保管
[endscript]



;-----------------------------------------------------------
*replaypage
;-----------------------------------------------------------

[cm]
[button graphic=append_theme/button_back.png enterimg=append_theme/button_back2.png target=*backtitle x=820 y=40]
[iscript]
tf.target_page = "page_" + tf.page
[endscript]



;-----------------------------------------------------------
*replayview
;-----------------------------------------------------------

[jump target=&tf.target_page]



;-----------------------------------------------------------
*page_0
;-----------------------------------------------------------

; 回想モード画面1ページ目

; [replay_image_button]
; これは独自マクロです(→tyrano.ks)。
;「回想を開始するボタン」を、解放/未開放を判断しながら表示します。
;   name       ... リプレイの名前。
;   graphic    ... 閲覧させたいCGのstorage。bgimageフォルダが基準。
;   no_graphic ... 未解放時のサムネイル。
;   他         ... [button]と同じ要素。

; [cg_image_button]x任意
; 回想ボタンを設置
[replay_image_button name=replay1 graphic=room.jpg  no_graphic=../image/append_theme/lock.png x=170 y=160 width=300 height=200 folder=bgimage]
[replay_image_button name=replay2 graphic=title.jpg no_graphic=../image/append_theme/lock.png x=490 y=160 width=300 height=200 folder=bgimage]
[replay_image_button name=xxx     graphic=xxx.jpg   no_graphic=../image/append_theme/lock.png x=170 y=380 width=300 height=200 folder=bgimage]
[replay_image_button name=xxx     graphic=xxx.jpg   no_graphic=../image/append_theme/lock.png x=490 y=380 width=300 height=200 folder=bgimage]

; [button]x2
; 前へボタンと次へボタン
;[button graphic=append_theme/button_prev.png enterimg=append_theme/button_prev2.png target=*backpage x=050 y=330]
[button graphic=append_theme/button_next.png enterimg=append_theme/button_next2.png target=*nextpage x=850 y=330]

[jump target=*common]



;-----------------------------------------------------------
*page_1
;-----------------------------------------------------------

; 回想モード画面2ページ目

; [cg_image_button]x任意
; 回想ボタンを設置
[replay_image_button name=replay1 graphic=room.jpg  no_graphic=../image/append_theme/lock.png x=170 y=160 width=300 height=200 folder=bgimage]
[replay_image_button name=replay2 graphic=title.jpg no_graphic=../image/append_theme/lock.png x=490 y=160 width=300 height=200 folder=bgimage]
[replay_image_button name=xxx     graphic=xxx.jpg   no_graphic=../image/append_theme/lock.png x=170 y=380 width=300 height=200 folder=bgimage]
[replay_image_button name=xxx     graphic=xxx.jpg   no_graphic=../image/append_theme/lock.png x=490 y=380 width=300 height=200 folder=bgimage]

; [button]x2
; 前へボタンと次へボタン
[button graphic=append_theme/button_prev.png enterimg=append_theme/button_prev2.png target=*backpage x=050 y=330]
[button graphic=append_theme/button_next.png enterimg=append_theme/button_next2.png target=*nextpage x=850 y=330]

[jump target=*common]



;-----------------------------------------------------------
*page_2
;-----------------------------------------------------------

; 回想モード画面3ページ目

; [cg_image_button]x任意
; 回想ボタンを設置
[replay_image_button name=replay1 graphic=room.jpg  no_graphic=../image/append_theme/lock.png x=170 y=160 width=300 height=200 folder=bgimage]
[replay_image_button name=replay2 graphic=title.jpg no_graphic=../image/append_theme/lock.png x=490 y=160 width=300 height=200 folder=bgimage]
[replay_image_button name=xxx     graphic=xxx.jpg   no_graphic=../image/append_theme/lock.png x=170 y=380 width=300 height=200 folder=bgimage]
[replay_image_button name=xxx     graphic=xxx.jpg   no_graphic=../image/append_theme/lock.png x=490 y=380 width=300 height=200 folder=bgimage]

; [button]x2
; 前へボタンと次へボタン
[button graphic=append_theme/button_prev.png enterimg=append_theme/button_prev2.png target=*backpage x=050 y=330]
;[button graphic=append_theme/button_next.png enterimg=append_theme/button_next2.png target=*nextpage x=850 y=330]

[jump target=*common]


;-----------------------------------------------------------
*common
;-----------------------------------------------------------

[s]



;-------------------------------------------------------
*backtitle
;-------------------------------------------------------


[cm]
[freeimage layer=1]
[jump storage=title.ks]



;-------------------------------------------------------
*nextpage
;-------------------------------------------------------
[emb exp=tf.page++]
[jump target=*replaypage]


;-------------------------------------------------------
*backpage
;-------------------------------------------------------

[emb exp=tf.page--]
[jump target=*replaypage]



;-------------------------------------------------------
*clickcg
;-------------------------------------------------------

[cm]
[iscript]
tf.flag_replay = true
[endscript]
[jump storage=&tf.selected_replay_obj.storage target=&tf.selected_replay_obj.target]
[s]



;-------------------------------------------------------
*no_image
;-------------------------------------------------------

[jump  target=*replaypage]
