require 'test_helper'

class ProductTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_type = product_types(:one)
  end

  test "should get index" do
    get product_types_url, as: :json
    assert_response :success
  end

  test "should create product_type" do
    assert_difference('ProductType.count') do
      post product_types_url, params: { product_type: { product_type: @product_type.product_type } }, as: :json
    end

    assert_response 201
  end

  test "should show product_type" do
    get product_type_url(@product_type), as: :json
    assert_response :success
  end

  test "should update product_type" do
    patch product_type_url(@product_type), params: { product_type: { product_type: @product_type.product_type } }, as: :json
    assert_response 200
  end

  test "should destroy product_type" do
    assert_difference('ProductType.count', -1) do
      delete product_type_url(@product_type), as: :json
    end

    assert_response 204
  end
end
