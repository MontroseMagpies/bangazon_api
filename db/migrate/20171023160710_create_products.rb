class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products, id: false do |t|
      t.integer :product_id, primary_key: true
      # t.string :product_type
      t.float :product_price
      t.string :product_description
      t.references :product_types, foreign_key: true
      t.references :customers, foreign_key: true 

      t.timestamps
    end
  end
end
