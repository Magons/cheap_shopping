class Product < ActiveRecord::Base
  has_many :prices, dependent: :destroy
  has_many :markets, through: :prices
  accepts_nested_attributes_for :prices, reject_if: :all_blank, allow_destroy: true
end
