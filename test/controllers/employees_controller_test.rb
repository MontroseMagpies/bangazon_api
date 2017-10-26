require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url, as: :json
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { department_id: @employee.department_id, employee_hire_date: @employee.employee_hire_date, job_title: @employee.job_title, name_first: @employee.name_first, name_last: @employee.name_last } }, as: :json
    end

    assert_response 201
  end

  test "should show employee" do
    get employee_url(@employee), as: :json
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { department_id: @employee.department_id, employee_hire_date: @employee.employee_hire_date, job_title: @employee.job_title, name_first: @employee.name_first, name_last: @employee.name_last } }, as: :json
    assert_response 200
  end

 
end
