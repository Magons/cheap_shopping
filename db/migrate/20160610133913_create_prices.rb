class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :type
      t.references :market, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
