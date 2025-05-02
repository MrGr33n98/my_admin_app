require "application_system_test_case"

class ProductAccessesTest < ApplicationSystemTestCase
  setup do
    @product_access = product_accesses(:one)
  end

  test "visiting the index" do
    visit product_accesses_url
    assert_selector "h1", text: "Product accesses"
  end

  test "should create product access" do
    visit product_accesses_url
    click_on "New product access"

    fill_in "Access level", with: @product_access.access_level
    fill_in "Granted at", with: @product_access.granted_at
    fill_in "Member", with: @product_access.member_id
    fill_in "Product name", with: @product_access.product_name
    fill_in "Revoked at", with: @product_access.revoked_at
    click_on "Create Product access"

    assert_text "Product access was successfully created"
    click_on "Back"
  end

  test "should update Product access" do
    visit product_access_url(@product_access)
    click_on "Edit this product access", match: :first

    fill_in "Access level", with: @product_access.access_level
    fill_in "Granted at", with: @product_access.granted_at
    fill_in "Member", with: @product_access.member_id
    fill_in "Product name", with: @product_access.product_name
    fill_in "Revoked at", with: @product_access.revoked_at
    click_on "Update Product access"

    assert_text "Product access was successfully updated"
    click_on "Back"
  end

  test "should destroy Product access" do
    visit product_access_url(@product_access)
    click_on "Destroy this product access", match: :first

    assert_text "Product access was successfully destroyed"
  end
end
