# README

Name
Child-Saving app
====

Overview
子どもが気軽に使えるQ＆A型のSNSアプリ。

## Description
子どもが簡単に質問をして、他の子どもや大人が質問に答えます。
秘密にしたい悩みや緊急性のある悩みについても送ることができます。

## Demo
<a href="https://gyazo.com/3beff7d36637c8a5c81159bce7cc8479"><img src="https://i.gyazo.com/3beff7d36637c8a5c81159bce7cc8479.gif" alt="Image from Gyazo" width="1000"/></a>

## VS. 

## Requirement


## Usage

## Install

## Contribution

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


## likesテーブル

|Column|Type|Options|
|------|----|-------|
|comment_id|integer|
|ip|string|
### Association
- belongs_to :message