class RemoveCustomerIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :customer_id # table, column
  end
end

