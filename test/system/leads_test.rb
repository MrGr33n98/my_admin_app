require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "should create lead" do
    visit leads_url
    click_on "New lead"

    fill_in "Client email", with: @lead.client_email
    fill_in "Client name", with: @lead.client_name
    fill_in "Client phone", with: @lead.client_phone
    fill_in "Company", with: @lead.company_id
    fill_in "Date", with: @lead.date
    fill_in "Lead type", with: @lead.lead_type
    fill_in "Value", with: @lead.value
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "should update Lead" do
    visit lead_url(@lead)
    click_on "Edit this lead", match: :first

    fill_in "Client email", with: @lead.client_email
    fill_in "Client name", with: @lead.client_name
    fill_in "Client phone", with: @lead.client_phone
    fill_in "Company", with: @lead.company_id
    fill_in "Date", with: @lead.date
    fill_in "Lead type", with: @lead.lead_type
    fill_in "Value", with: @lead.value
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "should destroy Lead" do
    visit lead_url(@lead)
    click_on "Destroy this lead", match: :first

    assert_text "Lead was successfully destroyed"
  end
end
