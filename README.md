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
- has_many :groups, through: :users_groups

## group_table
|Column|Type|Option|
|------|----|------|
|name--|string|----|

### Association
- has_many :messages
- has_many :groups_users
- has_many :users, through: :groups_users

## message_table
|Column|Type|Option|
|------|----|------|
|image|integer|----|
|user_id|string-|--|
|group_id|string|--|

### Association
- belongs_to :group
- belongs_to :users

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
