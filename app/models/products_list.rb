class ProductsList < ActiveRecord::Base
  has_many :productization, dependent: :destroy
  has_many :products, through: :productization
  accepts_nested_attributes_for :productization, reject_if: :all_blank, allow_destroy: true
end
