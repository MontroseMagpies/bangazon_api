require 'test_helper'

class ProductOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_order = product_orders(:one)
  end

  test "should get index" do
    get product_orders_url, as: :json
    assert_response :success
  end

  test "should create product_order" do
    assert_difference('ProductOrder.count') do
      post product_orders_url, params: { product_order: { order_id: @product_order.order_id, product_id: @product_order.product_id } }, as: :json
    end

    assert_response 201
  end

  test "should show product_order" do
    get product_order_url(@product_order), as: :json
    assert_response :success
  end

  test "should update product_order" do
    patch product_order_url(@product_order), params: { product_order: { order_id: @product_order.order_id, product_id: @product_order.product_id } }, as: :json
    assert_response 200
  end

  test "should destroy product_order" do
    assert_difference('ProductOrder.count', -1) do
      delete product_order_url(@product_order), as: :json
    end

    assert_response 204
  end
end
