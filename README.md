# アプリ名
Eventlly

# 概要
同じ趣味の誰かと一緒にイベントへいくアプリ

# 本番環境
https://eventlly.herokuapp.com/

# 制作背景
自分はゲームが好きでイベントにも行ってみたいと思ったもので、気軽に一緒に行ける相手を見つけられるようにこのアプリを作成しました。

# 工夫したポイント
コメント機能やdm機能をつけることでコミュニケーションを取りやすくしました。

# 使用技術
Ruby 2.5.1
Rails 5.2.3
Haml
SCSS

# 課題や今後実装したい機能
## 課題
検索機能が十分でない

## 今後実装したい機能
ジャンルの複数選択
参加予定や過去に参加したイベントの情報

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|index: true,null: false|
|email|string|index: true, null: false|
|password|string|null: false|

### Association
- has_many : posts
- has_many : comments


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|date|date|null: false|
|area|string|null: false|
|place|string|
|genre|string|
|explanation|text|
|user_id|references|null: false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :user


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|post_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post


## roomsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|

### Association
- belongs_to :user
- belongs_to :post


## entriesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|room_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|room_id|references|null: false, foreign_key: true|
|content|text|

### Association
- belongs_to :user
- belongs_to :post
