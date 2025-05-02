require "application_system_test_case"

class CompanyImagesTest < ApplicationSystemTestCase
  setup do
    @company_image = company_images(:one)
  end

  test "visiting the index" do
    visit company_images_url
    assert_selector "h1", text: "Company images"
  end

  test "should create company image" do
    visit company_images_url
    click_on "New company image"

    fill_in "Company", with: @company_image.company_id
    fill_in "Image type", with: @company_image.image_type
    click_on "Create Company image"

    assert_text "Company image was successfully created"
    click_on "Back"
  end

  test "should update Company image" do
    visit company_image_url(@company_image)
    click_on "Edit this company image", match: :first

    fill_in "Company", with: @company_image.company_id
    fill_in "Image type", with: @company_image.image_type
    click_on "Update Company image"

    assert_text "Company image was successfully updated"
    click_on "Back"
  end

  test "should destroy Company image" do
    visit company_image_url(@company_image)
    click_on "Destroy this company image", match: :first

    assert_text "Company image was successfully destroyed"
  end
end
