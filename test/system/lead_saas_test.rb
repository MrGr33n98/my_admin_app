require "application_system_test_case"

class LeadSaasTest < ApplicationSystemTestCase
  setup do
    @lead_saa = lead_saas(:one)
  end

  test "visiting the index" do
    visit lead_saas_url
    assert_selector "h1", text: "Lead saas"
  end

  test "should create lead saa" do
    visit lead_saas_url
    click_on "New lead saa"

    fill_in "Captured at", with: @lead_saa.captured_at
    fill_in "Company name", with: @lead_saa.company_name
    fill_in "Email", with: @lead_saa.email
    fill_in "Name", with: @lead_saa.name
    fill_in "Source", with: @lead_saa.source
    fill_in "Stage", with: @lead_saa.stage
    click_on "Create Lead saa"

    assert_text "Lead saa was successfully created"
    click_on "Back"
  end

  test "should update Lead saa" do
    visit lead_saa_url(@lead_saa)
    click_on "Edit this lead saa", match: :first

    fill_in "Captured at", with: @lead_saa.captured_at
    fill_in "Company name", with: @lead_saa.company_name
    fill_in "Email", with: @lead_saa.email
    fill_in "Name", with: @lead_saa.name
    fill_in "Source", with: @lead_saa.source
    fill_in "Stage", with: @lead_saa.stage
    click_on "Update Lead saa"

    assert_text "Lead saa was successfully updated"
    click_on "Back"
  end

  test "should destroy Lead saa" do
    visit lead_saa_url(@lead_saa)
    click_on "Destroy this lead saa", match: :first

    assert_text "Lead saa was successfully destroyed"
  end
end
