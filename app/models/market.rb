class Market < ActiveRecord::Base
  has_many :prices, dependent: :destroy
  has_many :products, through: :prices
end
