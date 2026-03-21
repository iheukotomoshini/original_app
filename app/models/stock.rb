class Stock < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre, foreign_key: :category_id
  
  has_one_attached :order_user

  validates :title, presence: true
  validates :explanation, presence: true
  validates :category_id, presence: true
  validates :price, presence: true
  validates :piece, presence: true


end
