require "test_helper"

class SponsoredProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsored_product = sponsored_products(:one)
  end

  test "should get index" do
    get sponsored_products_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsored_product_url
    assert_response :success
  end

  test "should create sponsored_product" do
    assert_difference("SponsoredProduct.count") do
      post sponsored_products_url, params: { sponsored_product: { company_id: @sponsored_product.company_id, end_date: @sponsored_product.end_date, price_paid: @sponsored_product.price_paid, product_name: @sponsored_product.product_name, start_date: @sponsored_product.start_date, status: @sponsored_product.status } }
    end

    assert_redirected_to sponsored_product_url(SponsoredProduct.last)
  end

  test "should show sponsored_product" do
    get sponsored_product_url(@sponsored_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsored_product_url(@sponsored_product)
    assert_response :success
  end

  test "should update sponsored_product" do
    patch sponsored_product_url(@sponsored_product), params: { sponsored_product: { company_id: @sponsored_product.company_id, end_date: @sponsored_product.end_date, price_paid: @sponsored_product.price_paid, product_name: @sponsored_product.product_name, start_date: @sponsored_product.start_date, status: @sponsored_product.status } }
    assert_redirected_to sponsored_product_url(@sponsored_product)
  end

  test "should destroy sponsored_product" do
    assert_difference("SponsoredProduct.count", -1) do
      delete sponsored_product_url(@sponsored_product)
    end

    assert_redirected_to sponsored_products_url
  end
end
