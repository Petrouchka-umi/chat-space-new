# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false, unique: true
|reset_password_token|string|
|reset_password_sent_at|string|
|remember_created_at|string|

### Association
- has_many :messages
- has_many :users_groups
- has_many :groups, through: :users_groups


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user|references|forenign_key: true|
|group|references|forenign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|unique: true|

### Association
- has_many :messages
- has_many :users_groups
- has_many :users, through: :users_groups

