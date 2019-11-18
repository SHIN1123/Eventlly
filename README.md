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
|date|string|null: false|
|area|string|null: false|
|place|string|
|genre|string|
|explanation|text|
|user_id|references|null: false, foreign_key: true|

### Association
- has_many :comments
- belongs_to :user


## commentssテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|references|null: false, foreign_key: true|
|post_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post
