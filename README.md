## users_table

|Column|Type|Option|
|------|----|------|
|id----|integer|---|
|email-|string-|---|
|password|string|--|
|name--|string|null:false|

### Association
- has_many:massages
- has_many:groups_users
- has_many :groups, through: :groups_users

## group_table
|Column|Type|Option|
|------|----|------|
|name--|string|null: false|

### Association
- has_many :messages
- has_many :groups_users
- has_many :users, through: :groups_users

## message_table
|Column|Type|Option|
|------|----|------|
|body--|text|------|
|image|string|----|
|user_id|references|null: false,foreign_key:true|
|group_id|references|null: false,foreign_key:true|

### Association
- belongs_to :group
- belongs_to :user

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belong_to :group
- belong_to :user