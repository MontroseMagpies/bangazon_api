class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name_first
      t.string :name_last
      t.string :job_title
      t.date :employee_hire_date
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
