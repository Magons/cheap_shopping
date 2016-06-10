class ProductsList < ActiveRecord::Base
  has_many :productization
  has_many :products, through: :productization
end
