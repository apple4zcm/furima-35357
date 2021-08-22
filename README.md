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

- has_many :items
- has_many :purchases


## items テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| category_id        | integer    | null: false                    |
| info               | text       | null: false                    |
| delivery_fee_id    | integer    | null: false                    |
| delivery_date_id   | integer    | null: false                    |
| item_name          | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| item_condition_id  | integer    | null: false                    |
| price              | integer    | null: false                    |

### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column | Type       | Options                        |
| ----- | ---------- | ------------------------------ |
| user  | references | null: false, foreign_key: true |
| item  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| prefecture_id  | integer    | null: false                    |
| municipality   | string     | null: false                    |
| house_number   | string     | null: false                    |
| building       | string     |                                |
| postal_code    | string     | null: false                    |
| telephone      | string     | null: false                    |
| purchase       | references | null: false, foreign_key: true |

### Association

- belongs_to :purchase