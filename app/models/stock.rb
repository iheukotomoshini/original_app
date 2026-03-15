class Stock < ApplicationRecord
  belongs_to :user
  has_one_attached :order_user

  validates :title, presence: true
  validates :explanation, presence: true
  validates :category_id, presence: true
  validates :price, presence: true
  validates :piece, presence: true
end
