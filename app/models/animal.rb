class Animal < ApplicationRecord
  belongs_to :prefecture
  belongs_to :old_year
  belongs_to :old_month
  has_one_attached :image
end
