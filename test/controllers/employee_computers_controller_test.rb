require 'test_helper'

class EmployeeComputersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_computer = employee_computers(:one)
  end

  test "should get index" do
    get employee_computers_url, as: :json
    assert_response :success
  end

  test "should create employee_computer" do
    assert_difference('EmployeeComputer.count') do
      post employee_computers_url, params: { employee_computer: { computer_id: @employee_computer.computer_id, employee_id: @employee_computer.employee_id } }, as: :json
    end

    assert_response 201
  end

  test "should show employee_computer" do
    get employee_computer_url(@employee_computer), as: :json
    assert_response :success
  end

  test "should update employee_computer" do
    patch employee_computer_url(@employee_computer), params: { employee_computer: { computer_id: @employee_computer.computer_id, employee_id: @employee_computer.employee_id } }, as: :json
    assert_response 200
  end

  test "should destroy employee_computer" do
    assert_difference('EmployeeComputer.count', -1) do
      delete employee_computer_url(@employee_computer), as: :json
    end

    assert_response 204
  end
end
