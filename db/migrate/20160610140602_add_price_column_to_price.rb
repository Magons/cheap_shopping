class AddPriceColumnToPrice < ActiveRecord::Migration
  def change
    add_column :prices, :price, :decimal
  end
end
