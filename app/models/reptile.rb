class Reptile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 30, maximum: 500 }
  validates :species, presence: true, length: { minimum: 1, maximum: 100 }
  validates :daily_price, presence: true, numericality: true
end
