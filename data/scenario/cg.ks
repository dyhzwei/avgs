;===========================================================
; CGモード画面作成
;===========================================================

; 解放コマンド
[cg storage=rouka.jpg]
[cg storage=room.jpg]



;-----------------------------------------------------------
*start
;-----------------------------------------------------------


; CGモード画面に飛んできたときに行う初期化処理。


; [layopt][hidemenubutton]
; レイヤー設定。
; メッセージレイヤーとメニューボタン→非表示、
; レイヤー０･１→表示にします。
[layopt layer=message0 visible=false]
[layopt layer=0 visible=true]
[layopt layer=1 visible=true]
[hidemenubutton]

; [clearfix][cm]
; レイヤーの解放。
; fixレイヤーとフリーレイヤー(=ボタンやHTML等が挿入されるレイヤー)を解放します。
[clearfix]
[cm]

; [bg]
; 背景を表示します。
[bg storage=../image/append_theme/bg_gallery.png time=700]

; [iscript]～[endscript]
; 一時変数の設定。
[iscript]
tf.page              = 0   // CG閲覧ページの番号
tf.selected_cg_image = []  // 選択されたCGの差分配列
tf.cg_index          = 0   // 選択されたCGの差分配列の要素番号
[endscript]

[jump target=*cgpage]



;-----------------------------------------------------------
*cgpage
;-----------------------------------------------------------


; CG画面のボタンを作成します。


; [cm]
; フリーレイヤーの解放。
[cm]

; [button]
; クローズボタンを設置します。
[button graphic=append_theme/button_back.png enterimg=append_theme/button_back2.png target=*backtitle x=820 y=40]

; [jump]
; tf.page変数を利用して個別閲覧ボタン作成ラベルにジャンプします。
[jump target="& 'page_' + tf.page "]



;-------------------------------------------------------
*page_0
;-------------------------------------------------------

; CG閲覧モード画面1ページ目


下級方法可以一次點擊瀏覽三張圖
;[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=150 width=210 height=140 graphic=rouka.jpg,room.jpg,title.jpg]

[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=150 width=210 height=140 graphic=eki.png]

[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=150 width=210 height=140 graphic=road.png]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=150 width=210 height=140 graphic=road1.png]

[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=300 width=210 height=140 graphic=gate.png]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=300 width=210 height=140 graphic=gennkann.png]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=300 width=210 height=140 graphic=sofa.png]

[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=450 width=210 height=140 graphic=okujou.png]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=450 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=450 width=210 height=140 graphic=xxx.jpg]


;只留next button
[button graphic=append_theme/button_next.png enterimg=append_theme/button_next2.png target=*nextpage x=850 y=330]

; [jump]
; 共通処理にジャンプ
[jump target=*common]



;-------------------------------------------------------
*page_1
;-------------------------------------------------------

; CG閲覧モード画面2ページ目

; [cg_image_button]x任意
; CG閲覧ボタンを設置
[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=150 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=150 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=150 width=210 height=140 graphic=xxx.jpg]

[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=300 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=300 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=300 width=210 height=140 graphic=xxx.jpg]

[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=450 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=450 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=450 width=210 height=140 graphic=xxx.jpg]

; [button]x2
; 前へボタンと次へボタン
[button graphic=append_theme/button_prev.png enterimg=append_theme/button_prev2.png target=*backpage x=050 y=330]
[button graphic=append_theme/button_next.png enterimg=append_theme/button_next2.png target=*nextpage x=850 y=330]

; [jump]
; 共通処理にジャンプ
[jump target=*common]



;-------------------------------------------------------
*page_2
;-------------------------------------------------------

; CG閲覧モード画面3ページ目

; [cg_image_button]x任意
; CG閲覧ボタンを設置
[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=150 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=150 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=150 width=210 height=140 graphic=xxx.jpg]

[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=300 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=300 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=300 width=210 height=140 graphic=xxx.jpg]

[cg_image_button no_graphic=../image/append_theme/lock.png x=150 y=450 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=375 y=450 width=210 height=140 graphic=xxx.jpg]
[cg_image_button no_graphic=../image/append_theme/lock.png x=600 y=450 width=210 height=140 graphic=xxx.jpg]

; [button]x2
; 無next button
[button graphic=append_theme/button_prev.png enterimg=append_theme/button_prev2.png target=*backpage x=050 y=330]


; [jump]
; 共通処理にジャンプ
[jump target=*common]







;-------------------------------------------------------
*common
;-------------------------------------------------------

; 停止します。

[s]



;-----------------------------------------------------------
*backtitle
;-----------------------------------------------------------


; タイトルに戻る処理です。


; [cm][freeimage]
; フリーレイヤーとレイヤー０・１を解放して、
[cm]
[freeimage layer=0]
[freeimage layer=1]

; [jump]
; タイトル画面にジャンプします。
[jump storage=title.ks]



;-----------------------------------------------------------
*nextpage
;-----------------------------------------------------------


; 次のページに移る処理です。

; [eval][jump]
; 一時変数 tf.page を増加させたうえで *cgpage へ。
[eval exp=tf.page++]
[jump target=*cgpage]



;-----------------------------------------------------------
*backpage
;-----------------------------------------------------------


; 前のページに移る処理です。


; [eval][jump]
; 一時変数 tf.page を減少させたうえで *cgpage へ。
[eval exp=tf.page--]
[jump target=*cgpage]



;-----------------------------------------------------------
*no_image
;-----------------------------------------------------------


; 未解放のCGをクリックしたときの処理です。


; [jump]
; 単に *cgpage へ。
[jump  target=*cgpage]



;-----------------------------------------------------------
*clickcg
;-----------------------------------------------------------


; 解放済みのCGをクリックしたときの処理です。


; [cm][layopt]
; フリーレイヤーとレイヤー１(back)を解放します。
[cm]
[freeimage layer=1 page=back]

; [eval]
; 一時変数 tf.cg_index に 0 をぶち込みます。
[eval exp="tf.cg_index = 0"]



;-------------------------------------------------------
*cg_next_image
;-------------------------------------------------------


; CGを見ていきます。
; 見るべきCGがひとつしかない場合は、それだけ見たあと *cgpage に戻ります。
; 見るべきCGが複数ある場合(差分がある場合)は、
; 再帰的にこのラベルに飛び直して次のCGを見ていきます。

; [iscript]～[endscript]
; 一時変数 tf.storage に表示すべきCGのstorageを代入します
[iscript]
tf.storage = tf.selected_cg_image[tf.cg_index];
[endscript]

; [freeimage][image][trans][wt][l]
; CGを表示してクリックを待ちます。
[freeimage layer=1 page=back]
[image     layer=1 page=back storage=&tf.storage folder=bgimage width=960 height=640]
[trans     layer=1 time=700]
[wt]
[l]


; クリックされたら。


; [eval]
; 一時変数 tf.cg_index (差分画像がある場合の画像番号)を1増加させます。
[eval exp=tf.cg_index++]

; [if][jump]
; まだ表示すべき差分画像が残っているなら、このラベルに飛びなおします。
[if exp=" tf.selected_cg_image.length > tf.cg_index "]
  [jump target=cg_next_image]

; [else][freeimage][jump]
; もう表示すべき差分画像が残っていないなら、
; レイヤー１を解放して *cgpage に戻ります。
[else]
  [freeimage layer=1 page=back]
  [freeimage layer=1 page=fore time=700]
  [jump target=*cgpage]

[endif]