
1. Install Xcode
AppStoreから手動でインストールする。

1. dotfileリポジトリをgit cloneしてくる。
・`cd ~/.ssh && ssh-keygen -t rsa`
・id_rsa_git的な名前で作る
・id_rsa_git.pubをGithubに登録する
・`cd ~/ && mkdir workspace && git clone git@github.com:umisora/dotfile.git --recursive`

1. Mac Terminal Setting
   Mac Terminal.app のカラー設定をThema ImportでSolarized にする

1. Docker For MacをInstallする
   [Docker For Mac](https://docs.docker.com/docker-for-mac/)

1. Setup Scripts
・setup_dotfiles.shを実行する
・install.shを実行する
・`brew bundle` を実行する

1. Macの初期設定
・Mac>システム環境設定>キーボード
　　キーボード>　F1,F2などのすべてのキーを標準のファンクションキーとして使用を有効にする

1. Mac System Setting
・Mac>システム環境設定>キーボード
  ショートカット> Spotlight 
  ・Spotlight検索とFinderの検索ウインドウの表示ショートカットをOFF
  ユーザー辞書
  ・英入力中にスペルを自動変換をOFF
  ・文頭を自動で大文字をOFF
  ・スマート引用符とスマートダッシュを使用をOFF

1. MacApplicationのインストール
  * [Google Japanese IME](https://www.google.co.jp/ime/)
    ・インストール後、再ログイン
    ・Mac>システム環境設定>キーボード
      入力ソース> デフォルのIMEを`-`で消す。
  * [tunnelblickのインストール (VPN)](https://tunnelblick.net/downloads.html)
  * [quiver](http://happenapps.com/#quiver)
  * [Dash](https://kapeli.com/dash)  
  * AppStore履歴から入れたほうがいいやつをInstall

1. iCloud Account Or Apple Accountの統合
   カレンダー / メール / リマインダー 連携

1. その他インテグレーション
   ### Alfred (課金済)  
   https://www.alfredapp.com/
   課金していれば設定をバックアップできるのでそれでリカバリすればどこでも使える。幸せ

   #### インテグレーション
   * Dash ⇔ Alfred
   * スニペット/辞書機能
   * Alfred ⇔ lastpass (未設定だけどやりたい)
   * Alfred ⇔ 1password (未設定だけどやりたい)
