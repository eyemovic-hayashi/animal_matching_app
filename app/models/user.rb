class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         with_options presence:true do
          validates :nickname
          validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "を入力してください" }
          validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "を入力してください" }
          validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "を入力してください" }
          validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: "を入力してください" }
          validates :prefecture_id, numericality: { other_than: 0, message: "を選択してください" }
          validates :city
          validates :old_id, numericality: { other_than: 0, message: "を選択してください" }
          validates :gender
         end
         has_one_attached :image
         has_many :animals
         extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to :old
         belongs_to :prefecture
end
