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

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_name_kana    | string | null: false |
| birth_day          | date   | null: false |

### Association

- has_many :user_shops
- has_many :shops, through: :user_shops
- has_many :comments
- has_many :bookmarks


## shops テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| shop_category_id | integer | null: false |
| name             | string  | null: false |
| address          | string  | null: false |
| latitude         | float   | null: false |
| longitude        | float   | null: false |
| phone_number     | string  | null: false |
| opening_hours    | text    | null: false |
| closing_hours    | string  | null: false |
| website          | text    | null: false |
| access           | string  | null: false |
| photo_reference  | text    | null: false |
| photo_url        | text    | null: false |

### Association

- has_many :user_shops
- has_many :users, through: :user_shops
- has_many :comments
- has_many :bookmarks


## user_shops テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| shop   | references | null: false, foreign_key: true |

### Association

- belongs_to :shop
- belongs_to :user


## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| shop    | references | null: false, foreign_key: true |

### Association

- belongs_to :shop
- belongs_to :user


## bookmarks テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| shop    | references | null: false, foreign_key: true |

### Association

- belongs_to :shop
- belongs_to :user