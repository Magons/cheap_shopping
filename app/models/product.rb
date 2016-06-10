class Product < ActiveRecord::Base
  has_many :prices, dependent: :destroy
  has_many :markets, through: :prices
end
