require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "should create company" do
    visit companies_url
    click_on "New company"

    fill_in "Contact email", with: @company.contact_email
    fill_in "Contact phone", with: @company.contact_phone
    fill_in "Description", with: @company.description
    fill_in "Location", with: @company.location
    fill_in "Name", with: @company.name
    fill_in "Price range", with: @company.price_range
    fill_in "Website url", with: @company.website_url
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "should update Company" do
    visit company_url(@company)
    click_on "Edit this company", match: :first

    fill_in "Contact email", with: @company.contact_email
    fill_in "Contact phone", with: @company.contact_phone
    fill_in "Description", with: @company.description
    fill_in "Location", with: @company.location
    fill_in "Name", with: @company.name
    fill_in "Price range", with: @company.price_range
    fill_in "Website url", with: @company.website_url
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "should destroy Company" do
    visit company_url(@company)
    click_on "Destroy this company", match: :first

    assert_text "Company was successfully destroyed"
  end
end
