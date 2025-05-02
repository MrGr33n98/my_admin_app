require "test_helper"

class LeadSaasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead_saa = lead_saas(:one)
  end

  test "should get index" do
    get lead_saas_url
    assert_response :success
  end

  test "should get new" do
    get new_lead_saa_url
    assert_response :success
  end

  test "should create lead_saa" do
    assert_difference("LeadSaa.count") do
      post lead_saas_url, params: { lead_saa: { captured_at: @lead_saa.captured_at, company_name: @lead_saa.company_name, email: @lead_saa.email, name: @lead_saa.name, source: @lead_saa.source, stage: @lead_saa.stage } }
    end

    assert_redirected_to lead_saa_url(LeadSaa.last)
  end

  test "should show lead_saa" do
    get lead_saa_url(@lead_saa)
    assert_response :success
  end

  test "should get edit" do
    get edit_lead_saa_url(@lead_saa)
    assert_response :success
  end

  test "should update lead_saa" do
    patch lead_saa_url(@lead_saa), params: { lead_saa: { captured_at: @lead_saa.captured_at, company_name: @lead_saa.company_name, email: @lead_saa.email, name: @lead_saa.name, source: @lead_saa.source, stage: @lead_saa.stage } }
    assert_redirected_to lead_saa_url(@lead_saa)
  end

  test "should destroy lead_saa" do
    assert_difference("LeadSaa.count", -1) do
      delete lead_saa_url(@lead_saa)
    end

    assert_redirected_to lead_saas_url
  end
end
