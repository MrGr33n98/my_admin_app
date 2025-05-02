require "application_system_test_case"

class CompanyCategoriesTest < ApplicationSystemTestCase
  setup do
    @company_category = company_categories(:one)
  end

  test "visiting the index" do
    visit company_categories_url
    assert_selector "h1", text: "Company categories"
  end

  test "should create company category" do
    visit company_categories_url
    click_on "New company category"

    fill_in "Category", with: @company_category.category_id
    fill_in "Company", with: @company_category.company_id
    click_on "Create Company category"

    assert_text "Company category was successfully created"
    click_on "Back"
  end

  test "should update Company category" do
    visit company_category_url(@company_category)
    click_on "Edit this company category", match: :first

    fill_in "Category", with: @company_category.category_id
    fill_in "Company", with: @company_category.company_id
    click_on "Update Company category"

    assert_text "Company category was successfully updated"
    click_on "Back"
  end

  test "should destroy Company category" do
    visit company_category_url(@company_category)
    click_on "Destroy this company category", match: :first

    assert_text "Company category was successfully destroyed"
  end
end
