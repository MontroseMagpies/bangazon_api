class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name_first
      t.string :name_last
      t.string :address_street
      t.string :address_email
      t.string :city
      t.string :state
      t.integer :zip_code
      t.boolean :active
      t.date :last_date_active

      t.timestamps
    end
  end
end
