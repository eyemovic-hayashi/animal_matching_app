# アプリケーション名
Animal_Matching_App
- - -
# アプリケーション概要
保護した犬猫の里親探しが出来るアプリケーション
- - -
# URL
まだデプロイしていない為保留
- - -
# test用アカウント
* email: a@a
* password: aaa111
- - -
# 利用方法
* 保護ユーザーは、保護した動物をアプリケーション内に投稿。
* 里親希望ユーザーは、目当ての動物を検索、そしてチャットルームにて保護ユーザーと引取りまでの連絡を取る。
- - -
# 目指した課題解決
* 野良犬猫殺処分を一匹でも減らす為
* 飼う事ができない保護者が簡単に登録でき、短い時間で里親を見つける事ができる
- - -
# 洗い出した要件
<dl>
  <dt>トップページ/ボタン</dt>
  <dd>新規登録/サインインページへ遷移できるボタンがある  ログイン時は、ユーザー名/ログアウトできるボタンがある  保護した動物を投稿できるボタンがある  保護した動物を投稿できるボタンがある  投稿された動物の写真をクリックすると詳細ページへ遷移する</dd>
  <dt>トップページ/表示</dt>
  <dd>投稿された動物の写真が一覧表示で見る事ができる  投稿者のニックネームが写真と共に見る事ができる</dd>
</dl>
<!-- 他要件,後日記載 -->
- - -
# 実装した機能についての説明
【ユーザー機能】
* 新規登録ができる
* ログイン/ログアウトができる
* ログインしているユーザーのみがユーザー情報の編集ができる
* ログインしているユーザーのみが新規投稿する事ができる
- - -
# 実装予定の機能
- - -
- - -
# 各テーブル情報
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
| prefecture_id   | integer | null: false  |
| city            | strig   | null: false  |
| old_id          | integer | null: false  |
| gender_id       | integer | null: false  |
| comments        | text    |              |

<!-- 下記オプション一覧 -->
<!-- null: false カラムが殻の状態では保存できない -->
<!-- unique: true 一意性のみ許可（同じ値は保存できない） -->
<!-- ## foreign_key; true 外部キーの設定（別テーブルのカラム参照）  -->