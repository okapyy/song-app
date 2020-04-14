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