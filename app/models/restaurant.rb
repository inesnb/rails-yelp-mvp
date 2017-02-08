class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, :phone_number, :category, presence: true
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: {in: %w(chinese italian japanese french belgian)}
end
