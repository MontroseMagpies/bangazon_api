class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.float :product_price
      t.string :product_description
      t.references :Customer, foreign_key: true
      t.references :ProductType, foreign_key: true

      t.timestamps
    end
  end
end
