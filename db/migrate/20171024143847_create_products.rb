class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.float :product_price
      t.string :product_description
      t.references :customer, foreign_key: true
      t.references :product_type, foreign_key: true

      t.timestamps
    end
  end
end
