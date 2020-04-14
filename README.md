<!-- ・ユーザー管理機能
   user_table
・チャットグループ管理機能
   group_table
・チャットメッセージの保存機能
  massage_table -->

## users_table

|Column|Type|Option|
|------|----|------|
|id----|integer|---|
|email-|string-|---|
|password|string|--|
|name--|string|null:false|

### Association
- has_many:massages
- has_many:groups_users_table

## group_table
|Column|Type|Option|
|------|----|------|
|name--|string|----|

### Association
- has_many :message
- has_many :users_groups_table

## message_table
|Column|Type|Option|
|------|----|------|
|image|integer|----|
|user_id|string-|--|
|group_id|string|--|

### Association
- belongs_to :group
- belongs_to :user

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
