require 'test_helper'

class PaymentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_type = payment_types(:one)
  end

  test "should get index" do
    get payment_types_url, as: :json
    assert_response :success
  end

  test "should create payment_type" do
    assert_difference('PaymentType.count') do
      post payment_types_url, params: { payment_type: { Customer_id: @payment_type.Customer_id, account_number: @payment_type.account_number, payment_type: @payment_type.payment_type } }, as: :json
    end

    assert_response 201
  end

  test "should show payment_type" do
    get payment_type_url(@payment_type), as: :json
    assert_response :success
  end

  test "should update payment_type" do
    patch payment_type_url(@payment_type), params: { payment_type: { Customer_id: @payment_type.Customer_id, account_number: @payment_type.account_number, payment_type: @payment_type.payment_type } }, as: :json
    assert_response 200
  end

  test "should destroy payment_type" do
    assert_difference('PaymentType.count', -1) do
      delete payment_type_url(@payment_type), as: :json
    end

    assert_response 204
  end
end
