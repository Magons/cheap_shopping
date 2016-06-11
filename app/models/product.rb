class Product < ActiveRecord::Base
  has_many :prices, dependent: :destroy
  has_many :markets, through: :prices
  has_many :productization, dependent: :destroy
  has_many :products_list, through: :productization
  accepts_nested_attributes_for :prices, reject_if: :all_blank, allow_destroy: true
end
