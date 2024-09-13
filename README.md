# To Go  Eat
<br>

## ■ アプリケーション概要
  「To Go  Eat」は行きたい飲食店をカテゴリー別に保存し、一覧で表示できるサービスです。

<br>

## ■ サービスURL
  https://to-go-eat-41356.onrender.com/

<br>

## ■ テスト用アカウント
  - Basic認証パスワード：admin
  - Basic認証ID：2222
  - メールアドレス：a@gmail.com
  - パスワード：aaa111

<br>

## ■ 利用方法
  1. トップページのヘッダーからユーザー新規登録を行います。
  2. トップページの入力フォームに行きたいお店を入力し追加します。
  3. トップページ下部のカテゴリーをクリックし追加したお店の一覧を表示します。

<br>

## ■ アプリケーションを制作した背景
私は美味しいご飯屋さんや素敵なカフェを探して巡るのが趣味です。しかし、行きたいお店がたくさんありすぎて管理が難しくなってきました。そこで、保存してカテゴリー別に一覧で簡単に確認できるサービスが欲しいと思いこのアプリケーションを開発しました。

<br>

## ■ 実装した機能

__ユーザー管理機能__
 - 新規登録
 [![Image from Gyazo](https://i.gyazo.com/5f16430e7e3c9f26effa9e7a02a48953.png)](https://gyazo.com/5f16430e7e3c9f26effa9e7a02a48953)

 - ログイン機能
 [![Image from Gyazo](https://i.gyazo.com/ae75b8d6e909e8bc72caa2fd8b05726e.png)](https://gyazo.com/ae75b8d6e909e8bc72caa2fd8b05726e)

<br>

__行きたいお店管理機能__

 - リストに追加
 [![Image from Gyazo](https://i.gyazo.com/f992e9334b5f7f4103b109324f4585f6.gif)](https://gyazo.com/f992e9334b5f7f4103b109324f4585f6)

 - 一覧表示
 [![Image from Gyazo](https://i.gyazo.com/c5632bf94c2fd5cedb4542dd65983d10.gif)](https://gyazo.com/c5632bf94c2fd5cedb4542dd65983d10)

- 行きたいお店を編集
 [![Image from Gyazo](https://i.gyazo.com/24b215a4a6a14aabd2e1187ee68895af.gif)](https://gyazo.com/24b215a4a6a14aabd2e1187ee68895af)

- 行きたいお店を削除
 [![Image from Gyazo](https://i.gyazo.com/479f7b95cd5c6dc7f3b1a6d2df05a5aa.gif)](https://gyazo.com/479f7b95cd5c6dc7f3b1a6d2df05a5aa)

<br>

## ■ 実装予定の機能

 - google mapで表示した場所にあるお店にピンを立てます。選択したピンの情報を保存する機能を実装予定です。
 - 行ったお店と言っていないお店の区別をつけるために、行ったことを示す印をつける予定です。

<br>

## ■ データベース設計（ER図）

[![Image from Gyazo](https://i.gyazo.com/68495e75c29d425e097803c31173298f.png)](https://gyazo.com/68495e75c29d425e097803c31173298f)

なお、shops テーブルについては今後ER図の通り実装予定で、現在は以下の通りです。
#### 現在のテーブル ####
| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| shop_category_id | integer | null: false |
| name             | string  | null: false |
| address          | string  |             |
| phone_number     | string  |             |
| opening_hours    | string  |             |
| nearest_station  | string  |             |

<br>

## ■ 開発環境

__フロントエンド__
 - HTML / SCSS
 - JavaScript

__バックエンド__
 - Ruby 3.2.0
 - Ruby on Rails 7.0.8.4 

__インフラ__
 - PostgreSQL 14.13

__テスト__
 - RSpec
 - factory_bot
 - faker

__その他使用ツール__
 - devise
 - rubocop
 - GoogleMaps API
 - google_places
 - Active Storage
 - Active Hash

<br>

## ■ 工夫したポイント

 - お店を探すときに、カフェや居酒屋などのカテゴリー別に分けると便利だと思いました。そこで、お店をカテゴリーごとに閲覧できるように、Active Hashを使って分類しました。
 - 現在、実装途中ですが、Google Mapsでお店を検索し、保存できる機能を追加すると便利だと思い実装を進めています。