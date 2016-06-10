class Productization < ActiveRecord::Base
  belongs_to :product
  belongs_to :products_list
end
