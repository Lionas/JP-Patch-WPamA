# Japanese Translation Patch for WPamA 1.0.1

## 新機能
- 新しいモード "その他" は、キャラクター毎の金/銀/銅の鍵、ロックピック、完全・空の魂石の情報です。

## 概要
- このアドオンは誓いについてのカレンダーを表示し、今日の誓いをチャットメッセージに投稿します。
- またキャラクター毎に取得した誓いや、6つのロスガーワールドボスの状態（完了・進行中・なし）を表示します。
- ダンジョン名の代わりに場所の名前を表示することができます。
- 非ベテランメンバーにはスケールされたダンジョンの最低レベルを表示します。
- 誓いのステージが "...に戻る" や "〜と話す" になると、チェックマークが表示されます。
- アドオンウィンドウのオンオフ、または、チャットへのメッセージの投稿は、キーバインディングまたはスラッシュコマンドを使用します。

## RGLA(Raid Group Leader Assistant：レイドグループリーダーアシスタント)
**注意! この機能を利用するには AutoInvite（自動招待）アドオンが必要です!**

- ロスガーワールドボスデイリークエストを持っている場合、RGLAはグループを集めるために便利でしょう。
- "開始"ボタンをクリックすると、アドオンはAutoInviteの適切なクエストの設定を行い自動招待機能がONになります。
- 手動で招待文字列を設定する必要はありません。また、AutoInviteの以前の設定は保持されます。
- 新しいプレイヤーが加入した後はクエストが自動的にシェアされます。
- チャットに予め定義されたメッセージ（メンバー募集中、他）を選んで、"投稿"ボタンをクリックすると投稿します。
- "停止"ボタンをクリックすると、AutoInviteが停止し、設定が復元されます。

## Multiple languages support
EN fully supported;
DE fully supported;
FR partially supported- need help with translation some texts;
RU fully supported for RuESO 9.3;
Other languages - if you dare to care with the translation. 

## Special thanks
OlegS for alpha/beta-testing and debugging as well as co-authoring of the several features
Baertram for help with German translation
Svan, Nita for help with French translation

## メモ
インターフェースウィンドウの略語のMSL(最小スケールレベル)は、ダンジョンをスケールすることができる最小のレベルを意味します。

## "完了" と "無効(N/A)" の状態
"完了"状態を決定するために、アドオンは誓いを取得した時間と誓いを閉じた時間を記録します。
両方の時間が今日の7:00から明日の7:00までの間だった場合、"なし"が"完了"に変更されます。
（もし時間が今日の7:00以前だった場合、昨日の7:00から今日の7:00までの間としてチェックします）
両方の時間は変数に保存されます。

いくつかのケースでは、"完了"が表示されないことがあります：
1. ゲームがクラッシュした場合。変数がファイルに保存されません
2. "キャラクターをリセット"オプションを利用した(/wpa resetchar)
3. インタフェース言語を変更した
4. 同じコンピュータで誓いを取得し、別のものでクローズした場合。複数のコンピュータでプレイしたした場合などで、例えばデスクトップPCとノートPCのようなケースです。

”無効"ステータスは以下のケースの場合は"なし"に置き換えられます:
- 金の誓いと非ベテランキャラクター
- 銀の誓いとレベル45未満キャラクター

## List of Slash Command
/wpa - Show/hide addon window
/wpa on - Show addon window (alias /wpa show)
/wpa off - Hide addon window (alias /wpa hide)
/wpa td - Post to chat message about today's pledges(alias /wpa today)
/wpa r - Reload quests information for curent character (alias /wpa refresh)
/wpa rch - Delete information for all characters and load for curent (alias /wpa resetchar) 
/wpa n - Switch to display dungeons names (alias /wpa name)
/wpa l - Switch to display locations names (alias /wpa location)
/wpa ch - Switch to character window (alias /wpa char)
/wpa cl - Switch to calendar window (alias /wpa calendar)

/wpa dbgon - Enable debug mode
/wpa dbgoff - Disable debug mode
/wpa dbgclr - Clear debug buffer in SavedVariables
/wpa qdump - Dumping all taken quests to debug buffer

/rgla - Show/hide RGLA window
/rgla on - Show RGLA window (alias /rgla show)
/rgla off - Hide RGLA window (alias /rgla hide)
/rgla s - Start RGLA(alias /rgla start)
/rgla t - Stop RGLA(alias /rgla stop)
/rgla p - Post to chat "LFM .." message(alias /rgla post)
