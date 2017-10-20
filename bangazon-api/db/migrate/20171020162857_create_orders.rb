class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_id
      t.string :product_id
      t.string :customer_id
      t.string :payment_type_id
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
