; 2016/09/24 @ko10panda edit
;--------------------------------------------------------------------------------

;=========================================
; コンフィグ モード　画面作成
;=========================================

	[layopt layer="message0" visible="false"]

	[clearfix]

	[stop_keyconfig]

	[free_layermode time="100" wait="true"]

	[reset_camera time="100" wait="true"]

	[iscript]

		$(".layer_camera").empty();

	[endscript]

	[hidemenubutton]


	[iscript]

	TG.config.autoRecordLabel = "true"; // ラベル通過記録を有効に

	tf.current_bgm_vol = parseInt(TG.config.defaultBgmVolume);
	tf.current_se_vol = parseInt(TG.config.defaultSeVolume);

	tf.current_ch_speed = parseInt(TG.config.chSpeed);
	tf.current_auto_speed = parseInt(TG.config.autoSpeed);

	tf.text_skip ="ON";

	if(TG.config.unReadTextSkip != "true"){
		tf.text_skip ="OFF";
	}

	[endscript]


	[iscript]

	/* 画像類のパス */
	tf.img_path = '../others/plugin/theme_kopanda_02/image/config/';

	/* 画像類のパス（ボタン） */
	tf.btn_path_off = tf.img_path + 'c_btn.png';
	tf.btn_path_on  = tf.img_path + 'c_set.gif';

	[endscript]

	[cm]

;	コンフィグ用の背景
	[bg storage="&tf.img_path + 'bg_config.jpg'" time="100"]

;	「Back」ボタン
	[button fix="true" target="*backtitle" graphic="&tf.img_path + 'c_btn_back.gif'" enterimg="&tf.img_path + 'c_btn_back2.gif'" x="850" y="20"]

	[jump target="*config_page"]

;------------------------------------------------------------------------------------------------------
*config_page

;------------------------------------------------------------------------------------------------------
; BGM音量
;------------------------------------------------------------------------------------------------------
;	BGM音量-10
	[button name="bgmvol,bgmvol_10"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="300" y="170" exp="tf.current_bgm_vol = 10"]
;	BGM音量-20
	[button name="bgmvol,bgmvol_20"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="340" y="170" exp="tf.current_bgm_vol = 20"]
;	BGM音量-30
	[button name="bgmvol,bgmvol_30"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="380" y="170" exp="tf.current_bgm_vol = 30"]
;	BGM音量-40
	[button name="bgmvol,bgmvol_40"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="420" y="170" exp="tf.current_bgm_vol = 40"]
;	BGM音量-50
	[button name="bgmvol,bgmvol_50"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="460" y="170" exp="tf.current_bgm_vol = 50"]
;	BGM音量-60
	[button name="bgmvol,bgmvol_60"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="500" y="170" exp="tf.current_bgm_vol = 60"]
;	BGM音量-70
	[button name="bgmvol,bgmvol_70"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="540" y="170" exp="tf.current_bgm_vol = 70"]
;	BGM音量-80
	[button name="bgmvol,bgmvol_80"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="580" y="170" exp="tf.current_bgm_vol = 80"]
;	BGM音量-90
	[button name="bgmvol,bgmvol_90"  fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="620" y="170" exp="tf.current_bgm_vol = 90"]
;	BGM音量-100
	[button name="bgmvol,bgmvol_100" fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="660" y="170" exp="tf.current_bgm_vol = 100"]

;	BGM音量-ミュート（音量=0）
	[button name="bgmvol,bgmvol_0"   fix="true" target="*vol_bgm_change" graphic="&tf.btn_path_off" width="35" height="35" x="780" y="170" exp="tf.current_bgm_vol = 0"]

;------------------------------------------------------------------------------------------------------
; SE音量
;------------------------------------------------------------------------------------------------------
	[button name="sevol,sevol_10"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="300" y="220" exp="tf.current_se_vol = 10"]
	[button name="sevol,sevol_20"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="340" y="220" exp="tf.current_se_vol = 20"]
	[button name="sevol,sevol_30"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="380" y="220" exp="tf.current_se_vol = 30"]
	[button name="sevol,sevol_40"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="420" y="220" exp="tf.current_se_vol = 40"]
	[button name="sevol,sevol_50"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="460" y="220" exp="tf.current_se_vol = 50"]
	[button name="sevol,sevol_60"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="500" y="220" exp="tf.current_se_vol = 60"]
	[button name="sevol,sevol_70"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="540" y="220" exp="tf.current_se_vol = 70"]
	[button name="sevol,sevol_80"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="580" y="220" exp="tf.current_se_vol = 80"]
	[button name="sevol,sevol_90"  fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="620" y="220" exp="tf.current_se_vol = 90"]
	[button name="sevol,sevol_100" fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="660" y="220" exp="tf.current_se_vol = 100"]

;	SEミュート
	[button name="sevol,sevol_0"   fix="true" target="*vol_se_change" graphic="&tf.btn_path_off" width="35" height="35" x="780" y="220" exp="tf.current_se_vol = 0"]

;------------------------------------------------------------------------------------------------------
; テキスト速度
;------------------------------------------------------------------------------------------------------
	[button name="ch,ch_100" fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="300" y="290" exp="tf.set_ch_speed = 100"]
	[button name="ch,ch_80"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="340" y="290" exp="tf.set_ch_speed = 80"]
	[button name="ch,ch_50"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="380" y="290" exp="tf.set_ch_speed = 50"]
	[button name="ch,ch_40"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="420" y="290" exp="tf.set_ch_speed = 40"]
	[button name="ch,ch_30"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="460" y="290" exp="tf.set_ch_speed = 30"]
	[button name="ch,ch_25"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="500" y="290" exp="tf.set_ch_speed = 25"]
	[button name="ch,ch_20"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="540" y="290" exp="tf.set_ch_speed = 20"]
	[button name="ch,ch_11"  fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="580" y="290" exp="tf.set_ch_speed = 11"]
	[button name="ch,ch_8"   fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="620" y="290" exp="tf.set_ch_speed = 8"]
	[button name="ch,ch_5"   fix="true" target="*ch_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="660" y="290" exp="tf.set_ch_speed = 5"]

;------------------------------------------------------------------------------------------------------
; オート速度
;------------------------------------------------------------------------------------------------------
	[button fix="true" name="auto,auto_5000" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="300" y="340" exp="tf.set_auto_speed = 5000;tf.text_auto = 0"]
	[button fix="true" name="auto,auto_4500" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="340" y="340" exp="tf.set_auto_speed = 4500;tf.text_auto = 1"]
	[button fix="true" name="auto,auto_4000" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="380" y="340" exp="tf.set_auto_speed = 4000;tf.text_auto = 2"]
	[button fix="true" name="auto,auto_3500" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="420" y="340" exp="tf.set_auto_speed = 3500;tf.text_auto = 3"]
	[button fix="true" name="auto,auto_3000" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="460" y="340" exp="tf.set_auto_speed = 3000;tf.text_auto = 4"]
	[button fix="true" name="auto,auto_2500" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="500" y="340" exp="tf.set_auto_speed = 2500;tf.text_auto = 5"]
	[button fix="true" name="auto,auto_2000" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="540" y="340" exp="tf.set_auto_speed = 2000;tf.text_auto = 6"]
	[button fix="true" name="auto,auto_1300" target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="580" y="340" exp="tf.set_auto_speed = 1300;tf.text_auto = 7"]
	[button fix="true" name="auto,auto_800"  target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="620" y="340" exp="tf.set_auto_speed = 800;tf.text_auto = 8"]
	[button fix="true" name="auto,auto_500"  target="*auto_speed_change" graphic="&tf.btn_path_off" width="35" height="35" x="660" y="340" exp="tf.set_auto_speed = 500;tf.text_auto = 9"]

;------------------------------------------------------------------------------------------------------
; 未読スキップ
;------------------------------------------------------------------------------------------------------
;	未読スキップ-OFF
	[button name="unread_off" fix="true" target="*skip_off" graphic="&tf.btn_path_off" width="125" height="35" x="300" y="420"]

;	未読スキップ-ON
	[button name="unread_on"  fix="true" target="*skip_on"  graphic="&tf.btn_path_off" width="125" height="35" x="435" y="420"]

;------------------------------------------------------------------------------------------------------
; コンフィグ起動時の画面更新
;------------------------------------------------------------------------------------------------------
; BGM音量・SE音量・テキスト速度・オート速度・未読スキップの順
; $(セレクタ).attr("src","画像ファイルの場所");

	[iscript]

		$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

		$(".sevol_"+tf.current_se_vol).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

		$(".ch_"+tf.current_ch_speed).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

		$(".auto_"+tf.current_auto_speed).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

		if(tf.text_skip == 'OFF'){
			$(".unread_off").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_uts_off.png");
			}else{
				$(".unread_on").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_uts_on.png");
			}

	[endscript]

	[test_message_start]

[s]

;--------------------------------------------------------------------------------
; コンフィグを抜ける
;--------------------------------------------------------------------------------
*backtitle
	[cm]

	[clearfix]
	[start_keyconfig]
	[clearstack]
	[awakegame]

;================================================================================

; ボタンクリック時の処理

;================================================================================
;--------------------------------------------------------------------------------
; BGM音量
;--------------------------------------------------------------------------------
*vol_bgm_change

	[iscript]

		$(".bgmvol").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_btn.png");
		$(".bgmvol_"+tf.current_bgm_vol).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

	[endscript]

	[bgmopt volume="&tf.current_bgm_vol"]

[return]

;--------------------------------------------------------------------------------
; SE音量
;--------------------------------------------------------------------------------
*vol_se_change

	[iscript]

		$(".sevol").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_btn.png");
		$(".sevol_"+tf.current_se_vol).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

	[endscript]

	[seopt volume="&tf.current_se_vol"]

[return]

;---------------------------------------------------------------------------------
; テキスト速度
;--------------------------------------------------------------------------------
*ch_speed_change

	[iscript]

		tf.current_ch_speed = tf.set_ch_speed;

		$(".ch").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_btn.png");
		$(".ch_"+tf.set_ch_speed).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

	[endscript]

	[configdelay speed="&tf.set_ch_speed"]

	[test_message_reset]

[return]

;--------------------------------------------------------------------------------
; オート速度
;--------------------------------------------------------------------------------
*auto_speed_change

	[iscript]

		$(".auto").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_btn.png");
		$(".auto_"+tf.set_auto_speed).attr("src","data/others/plugin/theme_kopanda_02/image/config/c_set.png");

	[endscript]

	[autoconfig speed="&tf.set_auto_speed"]

[return]

;--------------------------------------------------------------------------------
; スキップ処理-OFF
;--------------------------------------------------------------------------------
*skip_off

	[iscript]

		$(".unread_off").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_uts_off.png");
		$(".unread_on").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_btn.png");

		tf.text_skip = "OFF";

	[endscript]

	[config_record_label skip="false"]

[return]

;--------------------------------------------------------------------------------
; スキップ処理-ON
;--------------------------------------------------------------------------------
*skip_on

	[iscript]

		$(".unread_off").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_btn.png");
		$(".unread_on").attr("src","data/others/plugin/theme_kopanda_02/image/config/c_uts_on.png");

		tf.text_skip = "ON";

	[endscript]

	[config_record_label skip="true"]

[return]
