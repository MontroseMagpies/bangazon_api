class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.boolean :fulfilled
      t.references :payment_type, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
