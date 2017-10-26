require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url, as: :json
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { active: @customer.active, address_email: @customer.address_email, address_street: @customer.address_street, city: @customer.city, last_date_active: @customer.last_date_active, name_first: @customer.name_first, name_last: @customer.name_last, state: @customer.state, zip_code: @customer.zip_code } }, as: :json
    end

    assert_response 201
  end

  test "should show customer" do
    get customer_url(@customer), as: :json
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { active: @customer.active, address_email: @customer.address_email, address_street: @customer.address_street, city: @customer.city, last_date_active: @customer.last_date_active, name_first: @customer.name_first, name_last: @customer.name_last, state: @customer.state, zip_code: @customer.zip_code } }, as: :json
    assert_response 200
  end

end
