# README
<img src="/assets/you-are.jpg" alt="YOUーARE" title="YOUーARE">
====
Name
Child-Saving「YOUーARE」 app
====

Overview
子どもが気軽に使えるQ＆A型のSNSアプリ。

## 概要
<ul>
  <li>子ども用相談アプリ</li>
  <li>相談に対するコメント機能</li>
  <li>秘密にしたい悩みに対応</li>
  <li>いいね機能（ありがとうボタン）</li>
</ul>
## デモ動画
<a href="https://gyazo.com/3beff7d36637c8a5c81159bce7cc8479"><img src="https://i.gyazo.com/3beff7d36637c8a5c81159bce7cc8479.gif" alt="Image from Gyazo" width="1000"/></a>

## 本番環境
・https://you-are.herokuapp.com/

## 制作意図
・子どもがSOSを簡単に発信できる「相談アプリ」が作りたくて制作。


## 工夫したところ
<ul>
  <li>子ども向けのアプリなので、フォントの形や動きを大きくしています。</li>
  <li>9~10歳を使用基準としてログイン機能など難しいものを省きました。</li>
  <li>アプリ内に詳しい使い方を入れています。</li>
</ul>


## 開発環境
・Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/heroku

## 今後実装したい機能
<ul>
  <li>教材として使えるようにグループ機能の追加</li>
  <li>検索機能</li>
</ul>

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

[tcnksm](https://github.com/tcnksm)

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|age|string|
|tittle|string|
|text|string|
### Association
- has_many :messages


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|comment_id|integer|
|name|string|
|age|string|
|text|string|
### Association
- belongs_to :comment
- has_many :likes,dependent: :destroy


## secretsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|
|school_name|string|
|age|string|
|text|string|
### Association


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|comment_id|integer|
|ip|string|
### Association
- belongs_to :message