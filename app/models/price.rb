class Price < ActiveRecord::Base
  belongs_to :market
  belongs_to :product

  validates :price, presence: true
end
