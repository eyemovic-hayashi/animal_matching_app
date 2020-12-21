class Animal < ApplicationRecord
  with_options presence:true do
    validates :sex
    validates :old_year_id, numericality: { other_than: 0 }
    validates :old_month_id, numericality: { other_than: 0 }
    validates :vaccine
    validates :sterilization
    validates :character
    validates :reason
    validates :prefecture_id, numericality: { other_than: 0 }
    validates :transfer_cost
    validates :transfer_terms
  end
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :old_year
  belongs_to :old_month
end
