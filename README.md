# README

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name_kanji         | string | null: false |
| name_kana          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |
| birthday           | string | null: false |

### Association

- has_many :item
- has_many :purchases


## items テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| item_user         | references | null: false |
| category          | references | null: false |
| item_information  | references | null: false |
| item_name         | references | null: false |
| item_location     | references | null: false |
| price             | references | null: false |
| comments          | text       | null: false |

### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column          | Type       | Options     |
| --------------- | ---------- | ----------- |
| user_address    | references | null: false |
| user_telephone  | references | null: false |

### Association

- has_one :user
- has_one :item
- has_one :address

## address テーブル

| Column        | Type       | Options     |
| ------------- | ---------- | ----------- |
| address       | references | null: false |
| postal_code   | references | null: false |
| telephone     | references | null: false |

### Association

- belongs_to :purchase