class Animal < ApplicationRecord
  with_options presence:true do
    validates :nickname
    validates :sex
    validates :vaccine
    validates :sterilization
    validates :character
    validates :reason
    validates :transfer_cost
    validates :transfer_terms
    validates :image

    with_options numericality: { other_than: 0 } do
      validates :old_year_id, numericality: { other_than: 0 }
      validates :old_month_id, numericality: { other_than: 0 }
      validates :prefecture_id, numericality: { other_than: 0 }
    end
  end
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :old_year
  belongs_to :old_month
end
