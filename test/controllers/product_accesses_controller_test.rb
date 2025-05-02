require "test_helper"

class ProductAccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_access = product_accesses(:one)
  end

  test "should get index" do
    get product_accesses_url
    assert_response :success
  end

  test "should get new" do
    get new_product_access_url
    assert_response :success
  end

  test "should create product_access" do
    assert_difference("ProductAccess.count") do
      post product_accesses_url, params: { product_access: { access_level: @product_access.access_level, granted_at: @product_access.granted_at, member_id: @product_access.member_id, product_name: @product_access.product_name, revoked_at: @product_access.revoked_at } }
    end

    assert_redirected_to product_access_url(ProductAccess.last)
  end

  test "should show product_access" do
    get product_access_url(@product_access)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_access_url(@product_access)
    assert_response :success
  end

  test "should update product_access" do
    patch product_access_url(@product_access), params: { product_access: { access_level: @product_access.access_level, granted_at: @product_access.granted_at, member_id: @product_access.member_id, product_name: @product_access.product_name, revoked_at: @product_access.revoked_at } }
    assert_redirected_to product_access_url(@product_access)
  end

  test "should destroy product_access" do
    assert_difference("ProductAccess.count", -1) do
      delete product_access_url(@product_access)
    end

    assert_redirected_to product_accesses_url
  end
end
