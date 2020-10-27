# README
![you-are](https://user-images.githubusercontent.com/67889594/92625605-d4de2080-f303-11ea-84be-cd0fde2618eb.jpg)

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
・近年、子どもの虐待事件が増えています。今の公共機関では相談しにくい環境があると思いました。そこで子どもが簡単にSOSを発信できる「相談アプリ」を作りたくて制作するに至りました。<br>またSNSによる事件も増えているので、子どもたちがSNSに向かう練習台が必要だという意図も込めています。


## 工夫したところ
<ul>
  <li>子ども向けのアプリなので、フォントの形や動きを大きくすることで操作性を重視。</li>
  <li>9~10歳を使用基準としているのでログイン機能などを排除。</li>
  <li>アプリ内に詳しい使い方を入れています。</li>
  <li>いいね機能をIPアドレスで制限</li>
</ul>


## 開発環境
・Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/heroku

## 今後実装したい機能
<ul>
  <li>教材として使えるようにグループ機能の追加</li>
  <li>相談検索機能</li>
</ul>

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)
Copyright YOU ARE 2020.
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