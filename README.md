## 下記オプション一覧
## null: false カラムが殻の状態では保存できない
## unique: true 一意性のみ許可（同じ値は保存できない）
## foreign_key; true 外部キーの設定（別テーブルのカラム参照） 

Usersテーブル
| Column          | Type    | Options      |
| --------------- | ------- | ------------ |
| first_name      | string  | null: false  |
| last_name       | string  | null: false  |
| first_name_kana | string  | null: false  |
| last_name_kana  | string  | null: false  |
| nickname        | string  | null: false  |
| mail_address    | string  | null: false  |
| password        | string  | null: false  |
| prefecture | 