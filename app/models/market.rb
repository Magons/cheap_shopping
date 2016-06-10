class Market < ActiveRecord::Base
  has_many :prices
  has_many :products, through: :prices
end
