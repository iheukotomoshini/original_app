# README

## users テーブル
| Column             | Type   |Options|
| ------             | ----   |-------|
| username           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| affiliation        | string | null: false |
| employee_number    | string | null: false |

### Association
has_many :stocks
has_many :order_users


## stocks テーブル
| Column                 | Type       |Options|
| ------                 | ----       |-------|
| title                  | string     | null: false |
| explanation            | text       | null: false |
| category_id            | integer    | null: false | 
| price                  | integer    | null: false |
| piece                  | integer    | null: false |   
| user                   | references | null: false, foreign_key: true |
### Association
belongs_to :user
has_one :order_user


## orders テーブル
| Column              | Type       |Options|
| ------              | ----       |-------|
| purpose             | text       | null: false | 
| place               | string     | null: false |  
| piece               | integer    | null: false | 
### Association
belongs_to :order_user

## order_usersテーブル
| Column                 | Type       |Options|
| ------                 | ----       |-------|
| stock                  | references | null: false, foreign_key: true |
| user                   | references | null: false, foreign_key: true |
### Association
belongs_to :stock
belongs_to :user
has_one :order
