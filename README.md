# README

## users テーブル

| Column             | Type   | Options                        |
| ------------------ | ------ | ------------------------------ |
| name               | string | null: false                    |
| email              | string | null: false, foreign_key: true |
| encrypted_password | string | null: false                    |
| nickname           | string | null: false                    |
| birthday           | string | null: false                    |

### Association

- has_many :item
- has_many :purchases


## items テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| image             | references | null: false |
| item_information  | references | null: false |
| item_name         | references | null: false |
| price             | references | null: false |

### Association

- belongs_to :user
- has_one :purchase
- has_one :address

## purchases テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| image         | references | null: false, foreign_key: true |
| credit_card   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- belongs_to :address

## address テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| address       | references | null: false, foreign_key: true |
| telephone     | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- has_one :purchase