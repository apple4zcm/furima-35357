# README

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| first_name_kanji   | string | null: false               |
| last_name_kanji    | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :item
- has_many :purchases


## items テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| user              | references | null: false, foreign_key: true |
| category_id       | integer    | null: false                    |
| item_information  | text       | null: false                    |
| delivery_fee_id   | integer    | null: false                    |
| delivery_date_id  | integer    | null: false                    |
| item_name         | string     | null: false                    |
| item_location_id  | integer    | null: false                    |
| price             | integer    | null: false                    |

### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user_id          | references | null: false, foreign_key: true |
| item_information | references | null: false                    |

### Association

- belongs_to :user
- belongs_to :items
- has_one :address

## address テーブル

| Column         | Type   | Options                   |
| -------------- | ------ | ------------------------- |
| prefecture     | string | null: false               |
| municipality   | string | null: false               |
| house_number   | string | null: false               |
| building       | string | null: false               |
| postal_code    | string | null: false               |
| telephone      | string | null: false, unique: true |

### Association

- belongs_to :purchase