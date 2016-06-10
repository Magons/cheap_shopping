class CreateProductizations < ActiveRecord::Migration
  def change
    create_table :productizations do |t|
      t.references :product, index: true, foreign_key: true
      t.references :products_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
