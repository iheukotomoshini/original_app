class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :employee_name, presence: true
  validates :email, presence: true
  validates :password, presence: true, format: { with: /\A(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}\z/}
  validates :affiliation, presence: true
  validates :employee_number, presence: true

  has_many_attached :stocks
  has_many_attached :order_users
end
