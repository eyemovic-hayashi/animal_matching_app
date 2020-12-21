# アプリケーション名
Animal_Matching_App
- - -
# アプリケーション概要
保護した猫の里親探しが出来るアプリケーション
- - -
# URL
まだデプロイしていない為保留
- - -
# test用アカウント
* email: a@a
* password: aaa111
- - -
# 利用方法
* ユーザーは、保護した猫をアプリケーション内に投稿。
* 里親希望ユーザーは、目当ての動物を検索、そしてチャットルームにて保護ユーザーと引取りまでの連絡を取る。
- - -
# 目指した課題解決
* 野良猫殺処分を一匹でも減らす為
* 飼う事ができない保護者が簡単に登録でき、短い時間で里親を見つける事ができる
- - -
# 洗い出した要件
<dl>
  <dt>トップページ/ボタン</dt>
    <dd>新規登録/サインインページへ遷移できるボタンがある</dd>
    <dd>ログイン時は、ユーザー名/ログアウトできるボタンがある</dd>
    <dd>保護した猫を投稿できるボタンがある</dd>
    <dd>保護した猫を投稿できるボタンがある</dd>
    <dd>投稿された猫の写真をクリックすると詳細ページへ遷移する</dd>
    <dd>「猫を探す」ボタンをクリックすると里親が見つかっていない猫の一覧表示が確認できるページへ遷移する</dd>
  <dt>トップページ/表示</dt>
    <dd>投稿された動物の写真が一覧表示で見る事ができる</dd>
    <dd>投稿者のニックネームが写真と共に見る事ができる</dd>
    <dd>「里親が見つかった猫」の一覧表示（新着３件ほど）</dd>
  <dt>新規登録ページ/ボタン</dt>
    <dd>会員新規登録できるボタンがある</dd>
  <dt>新規登録ページ/表示</dt>
    <dd>ユーザー情報を入力するフォームがある</dd>
  <dt>ユーザーログインページ/ボタン</dt>
    <dd>ログインしトップページに遷移するボタンがある</dd>
  <dt>ユーザーログインページ/表示</dt>
    <dd>ログインに必要な情報を入力するフォームが表示される</dd>
  <dt>ユーザー詳細ページ/ボタン</dt>
    <dd>自身のページのみ編集ページに遷移するボタンがある</dd>
    <dd>会員登録ページに遷移するボタンがある</dd>
  <dt>ユーザー詳細ページ/表示</dt>
    <dd>登録ユーザーの情報一覧が表示される（メールやパスワードは除く）</dd>
    <dd>投稿した猫の一覧が表示される</dd>
  <dt>投稿ページ/ボタン</dt>
    <dd>投稿したらトップページへ遷移するボタンがある</dd>
  <dt>投稿ページ/表示</dt>
    <dd>投稿に必要な情報を入力するフォームが表示される</dd>
  <dt>検索ページ/ボタン</dt>
    <dd>一覧表示してある画像をクリックすると猫の詳細ページに遷移する</dd>
  <dt>検索ページ/表示</dt>
    <dd>里親がまだ見つかっていない猫の投稿（新しい順10件）表示させる</dd>
  <dt>猫詳細ページ/ボタン<dt>
    <dd>検討するボタンがある</dd>
    <dd>「里親申込」をクリックするとチャットルームに遷移するボタンがある</dd>
    <dd>投稿者の名前もしくは画像をクリックするとユーザー詳細ページに遷移する</dd>
  <dt>猫詳細ページ/表示</dt>
    <dd>猫の画像・動画やプロフィール等が一覧表示される</dd>
    <dd>投稿者の画像・ニックネームが表示される</dd>
  <dt>猫編集ページ/ボタン</dt>
    <dd>「更新する」をクリックしたら猫詳細ページに遷移するボタンがある</dd>
    <dd>「家族が決まりました」をクリックすると猫詳細ページに遷移するボタンがある</dd>
  <dt>猫編集ページ/表示</dt>
    <dd>編集したい情報を入力するフォームが表示される<dd>
</dl>

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
* 投稿機能
* 投稿物詳細表示機能
* 投稿物編集機能
* 検索機能
* チャットルーム機能（非同期通信）
* 近くの動物病院やペットショップ表示機能(API)
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

Animalsテーブル
| Column          | Type    | Options      |
| --------------- | ------- | ------------ |
| sex             | string  | null: false  |
| old_year_id     | integer | null: false  |
| old_month_id    | integer | null: false  |
| vaccine         | string  | null: false  |
| sterilization   | string  | null: false  |
| character       | text    | null: false  |
| password        | text    | null: false  |
| prefecture_id   | integer | null: false  |
| reason          | text    | null: false  |
| transfer_cost   | text    | null: false  |
| transfer_terms  | text    | null: false  |

<!-- 下記オプション一覧 -->
<!-- null: false カラムが殻の状態では保存できない -->
<!-- unique: true 一意性のみ許可（同じ値は保存できない） -->
<!-- ## foreign_key; true 外部キーの設定（別テーブルのカラム参照）  -->