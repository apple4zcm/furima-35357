# README

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| first_name_kanji   | string | null: false, unique: true |
| last_name_kanji    | string | null: false, unique: true |
| first_name_kana    | string | null: false, unique: true |
| last_name_kana     | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :item
- has_many :purchases


## items テーブル

| Column            | Type       | Options     |
| ----------------- | ---------- | ----------- |
| user              | references | null: false |
| category_id       | integer    | null: false |
| item_information  | text       | null: false |
| item_condition    | references | null: false |
| delivery_fee_id   | integer    | null: false |
| delivery_date_id  | integer    | null: false |
| item_name         | string     | null: false |
| item_location_id  | integer    | null: false |
| price             | integer    | null: false |

### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column           | Type       | Options     |
| ---------------- | ---------- | ----------- |
| user_id          | references | null: false |
| item_information | text       | null: false |
| price            | integer    | null: false |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## address テーブル

| Column         | Type       | Options                   |
| -------------- | ---------- | ------------------------- |
| prefecture     | references | null: false               |
| municipality   | references | null: false               |
| house_number   | references | null: false               |
| building       | references | null: false               |
| postal_code    | references | null: false               |
| telephone      | references | null: false, unique: true |

### Association

- belongs_to :purchase