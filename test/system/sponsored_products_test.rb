require "application_system_test_case"

class SponsoredProductsTest < ApplicationSystemTestCase
  setup do
    @sponsored_product = sponsored_products(:one)
  end

  test "visiting the index" do
    visit sponsored_products_url
    assert_selector "h1", text: "Sponsored products"
  end

  test "should create sponsored product" do
    visit sponsored_products_url
    click_on "New sponsored product"

    fill_in "Company", with: @sponsored_product.company_id
    fill_in "End date", with: @sponsored_product.end_date
    fill_in "Price paid", with: @sponsored_product.price_paid
    fill_in "Product name", with: @sponsored_product.product_name
    fill_in "Start date", with: @sponsored_product.start_date
    fill_in "Status", with: @sponsored_product.status
    click_on "Create Sponsored product"

    assert_text "Sponsored product was successfully created"
    click_on "Back"
  end

  test "should update Sponsored product" do
    visit sponsored_product_url(@sponsored_product)
    click_on "Edit this sponsored product", match: :first

    fill_in "Company", with: @sponsored_product.company_id
    fill_in "End date", with: @sponsored_product.end_date
    fill_in "Price paid", with: @sponsored_product.price_paid
    fill_in "Product name", with: @sponsored_product.product_name
    fill_in "Start date", with: @sponsored_product.start_date
    fill_in "Status", with: @sponsored_product.status
    click_on "Update Sponsored product"

    assert_text "Sponsored product was successfully updated"
    click_on "Back"
  end

  test "should destroy Sponsored product" do
    visit sponsored_product_url(@sponsored_product)
    click_on "Destroy this sponsored product", match: :first

    assert_text "Sponsored product was successfully destroyed"
  end
end
