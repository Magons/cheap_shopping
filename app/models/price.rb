class Price < ActiveRecord::Base
  belongs_to :market
  belongs_to :product
end
