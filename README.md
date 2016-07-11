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
**注意! この機能を利用するには AutoInvite アドオンが必要です!**

ロスガーワールドボスデイリークエストを持っている場合、RGLAはグループを集めるために便利でしょう。
"開始"ボタンをクリックすると

When you click the "Start" button, the addon will set the appropriate quest settings in AutoInvite and turn it on.
You don't need to manually set the invite string. Also saves previous configuration of AutoInvite.
After a new player joins the group quest shared automatically.
Click the "Post" button for select and post predefined (LFM and others) message to chat.
When you click the "Stop" button AutoInvite will be stopped and its settings will be restored.

Multiple languages support
EN fully supported;
DE fully supported;
FR partially supported- need help with translation some texts;
RU fully supported for RuESO 9.3;
Other languages - if you dare to care with the translation. 

Special thanks
OlegS for alpha/beta-testing and debugging as well as co-authoring of the several features
Baertram for help with German translation
Svan, Nita for help with French translation

Note
An abbreviation MSL (Min Scaled Level) in interface window means "The minimum level which can be scaled dungeon".

About "Done" and "N/A" statuses
To determine the status "Done" addon remembers time stamp the taking of a pledge and time stamp closing of a pledge. If both the time stamp is between today 7:00 to 7:00 tomorrow then the status "None" is changed to "Done" (if current time < 7:00 then checks between yesterday 7:00 to 7:00 today). Both the time stamp stored in the saved variables.

There are several cases when the status "Done" may not be displayed:
1. If you had a crashing game. Saved variables are not preserved in the file;
2. You used the option "reset characters" (/wpa resetchar);
3. You changed the interface language;
4. If you took a pledge on the same computer and closed it to another. This is true if you play on multiple computers, for example you have a computer and a laptop.

The status "N/A" replaces the status of "None" in the following cases:
- Gold pledge and non veteran character;
- Silver pledge and character with a level lower than 45.

List of Slash Command
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
