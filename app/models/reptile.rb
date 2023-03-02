class Reptile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 1, maximum: 1500 }
  validates :species, presence: true, length: { minimum: 1, maximum: 100 }
  validates :daily_price, presence: true, numericality: true#, format: { with: /\A\d{1,3}(\.\d{1,2})?\z/ }

  has_one_attached :photo

#   private

#   def price_format
#     unless read_attribute_before_type_cast('price') =~ PRICE_REGEXP
#       errors.add('price', 'must match the correct format')
#     end
#   end
end
