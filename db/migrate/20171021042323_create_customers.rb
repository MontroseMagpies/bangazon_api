class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :name_first
      t.string :name_last
      t.string :customer_created_date
      t.string :address_street
      t.string :address_email
      t.string :city
      t.string :state
      t.integer :zip_code
      t.boolean :active
      t.string :last_date_used

      t.timestamps
    end
  end
end
