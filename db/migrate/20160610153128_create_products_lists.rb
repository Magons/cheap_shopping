class CreateProductsLists < ActiveRecord::Migration
  def change
    create_table :products_lists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
