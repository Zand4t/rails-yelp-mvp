class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true,
  validates :rating, :only_integer true
  validates :rating, only_integer: true
  validates :content, presence: true
end


