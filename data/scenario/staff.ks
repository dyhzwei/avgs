[bg storage="blackscreen.png"]
[playbgm storage="10.ogg"]

; [layopt]x2 メッセージレイヤー0番とフィックスレイヤーを非表示にします。

@layopt layer=message0 visible=false
[cm  ]
[clearfix]
[layopt layer=1 visible=true]
[layopt layer=2 visible=true]

; [image] 前景レイヤー1番を黒画像で覆います。(これによって、ベースレイヤーと前景レイヤー0番は見えなくなります。)
[image  layer=1 storage=color/black.png x=0 y=0 width=800 height=600 time=1000]


; [image] 背景用フォルダに入っている画像を画像オブジェクトとして前景レイヤー2番に出します。
[image layer=2 time=1000 x=40 y=100 width=300 folder=bgimage storage=moon.jpg]
; ([mtext][wait])x2 前景レイヤー2番に演出文字オブジェクトをwait=falseで出して、
; 直後に[wait]タグを置いて待機時間を調整します。
[mtext layer=2 text=導演  x=520 y=200 size=30 color=white wait=false in_effect=rotateIn time=3000 out_effect=rotateOut] [wait time=500]
[mtext layer=2 text=DYH x=560 y=240 size=30 color=white wait=false in_effect=rotateIn time=3000 out_effect=rotateOut] [wait time=3000]
; [freeimage] 前景レイヤー2番を解放します。
[freeimage layer=2 time=1000]

; [image]～[freeimage] 上記の繰り返し。
[image layer=2 time=1000 x=420 y=300 width=300 folder=bgimage storage=park.jpg]
[mtext layer=2 text=劇本      x=80  y=340 size=30 color=white wait=false in_effect=rotateIn time=3000 out_effect=rotateOut] [wait time=500]
[mtext layer=2 text=魯迅  x=120 y=380 size=30 color=white wait=false in_effect=rotateIn time=3000 out_effect=rotateOut] [wait time=3000]
[freeimage layer=2 time=1000]




; [image] 背景用フォルダに入っている画像を画像オブジェクトとして前景レイヤー2番に出します。
[image layer=2 time=1000 x=40 y=100 width=300 folder=bgimage storage=月のない夜.jpg]
; ([mtext][wait])x2 前景レイヤー2番に演出文字オブジェクトをwait=falseで出して、
; 直後に[wait]タグを置いて待機時間を調整します。
[mtext layer=2 text=繪畫  x=520 y=200 size=30 color=white wait=false in_effect=rotateIn time=3000 out_effect=rotateOut] [wait time=500]
[mtext layer=2 text=武內崇 x=560 y=240 size=30 color=white wait=false in_effect=rotateIn time=3000 out_effect=rotateOut] [wait time=3000]
; [freeimage] 前景レイヤー2番を解放します。
[freeimage layer=2 time=1000]



; [image]～[freeimage] 上記の繰り返し。
[mtext layer=2 text=Fin      x=80  y=340 size=30 color=white wait=false in_effect=rotateIn time=3000 out_effect=rotateOut] [wait time=2000]
[freeimage layer=2 time=1000]


; [layopt]x2 メッセージレイヤー0番とフィックスレイヤーを表示します。
;[layopt layer=message0 visible=true]
;[layopt layer=fix      visible=true]

[freeimage layer=1 time=3000]
[jump storage="title.ks"  ]