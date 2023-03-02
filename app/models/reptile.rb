class Reptile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :species, presence: true
  validates :daily_price, presence: true, numericality: true

  has_one_attached :photo

#   private

#   def price_format
#     unless read_attribute_before_type_cast('price') =~ PRICE_REGEXP
#       errors.add('price', 'must match the correct format')
#     end
# end
end
