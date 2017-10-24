class EmployeeComputer < ApplicationRecord
  belongs_to :computer
  belongs_to :employee
end
