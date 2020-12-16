class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence:true do
          validates :nickname
          validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "名字を入力してください" }
          validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "名前を入力してください" }
          validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "名字（カナ）を入力してください" }
          validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "名前（カナ）を入力してください" }
          validates :prefecture_id, numericality: { other_than: 0, message: "都道府県を選択してください" }
          validates :city
          validates :old_id, numericality: { other_than: 0, message: "年齢を選択してください" }
          validates :gender
         end
         has_one :prefecture
         has_one :old
end
