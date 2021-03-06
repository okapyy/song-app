# README

# アプリ名
  Live APP

# 概要(このアプリでできることを書いて下さい)
  弾いてみた動画をUPすることができます。また、アーティスト名や曲名で探している弾いてみた動画を検索することも可能です。他の人が投稿した弾いてみた動画視聴画面にはお気に入りボタンがあるのでお気に入り登録ができます。お気に入り登録をした動画はユーザーのマイページにて投稿した動画と共にそれぞれ一覧となって表示されるようになっています。

# 本番環境(デプロイ先  テストアカウント＆ID)
  まだです

# 制作背景(意図)
  大学時代、軽音楽部に所属しておりベースを担当していました。様々なバンドのコピーをしていたのですが楽譜がないバンドの場合弾いてみた動画を探して見ながらコピーをすることが多々ありました。その動画を検索する時に検索結果が弾いてみた動画だけではなく公式のミュージックビデオであったり、全く関係のない動画が出てきたりと検索に煩わしさを覚えていました。そこで、弾いてみた動画だけを集めたアプリがあれば検索もスムーズになるのではないかということでこのアプリの制作を始めました。

# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。

# 工夫したポイント
  なるべくシンプルでわかりやすい表示にしました。あまり柄柄するよりもメインは動画をきれいに見ることなのでそこを工夫しました。

# 使用技術(開発環境)
  Ruby / Ruby on Rails / MySQL / Github / Visual Studio Code

# 課題や今後実装したい機能
  投稿される動画のリサイズ
  お気に入り登録した順番でマイページの一覧表示
  お気に入り登録の非同期通信

# LiveApp DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :videos

## videosテーブル
|Column|Type|Options|
|------|----|-------|
|video|text|null: false|
|artist|text||
|song-title|text||
|content|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user