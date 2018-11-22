# README
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true ,index|
|email|string|null: false|
|password|string|null: false|

### Associeition
- has_many :blogs

## blogsテーブル

|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|image|text||
|user_id|references|null: false, foreign_key: true|

### Associeition
- belongs_to :user
