require "application_system_test_case"

class ImpressionsTest < ApplicationSystemTestCase
  setup do
    @impression = impressions(:one)
  end

  test "visiting the index" do
    visit impressions_url
    assert_selector "h1", text: "Impressions"
  end

  test "should create impression" do
    visit impressions_url
    click_on "New impression"

    fill_in "Company", with: @impression.company_id
    fill_in "Date", with: @impression.date
    fill_in "Impression type", with: @impression.impression_type
    fill_in "Value", with: @impression.value
    click_on "Create Impression"

    assert_text "Impression was successfully created"
    click_on "Back"
  end

  test "should update Impression" do
    visit impression_url(@impression)
    click_on "Edit this impression", match: :first

    fill_in "Company", with: @impression.company_id
    fill_in "Date", with: @impression.date
    fill_in "Impression type", with: @impression.impression_type
    fill_in "Value", with: @impression.value
    click_on "Update Impression"

    assert_text "Impression was successfully updated"
    click_on "Back"
  end

  test "should destroy Impression" do
    visit impression_url(@impression)
    click_on "Destroy this impression", match: :first

    assert_text "Impression was successfully destroyed"
  end
end
