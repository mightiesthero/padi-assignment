require 'test_helper'

class SurveyTechniciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @survey_technician = survey_technicians(:one)
  end

  test "should get index" do
    get survey_technicians_url
    assert_response :success
  end

  test "should get new" do
    get new_survey_technician_url
    assert_response :success
  end

  test "should create survey_technician" do
    assert_difference('SurveyTechnician.count') do
      post survey_technicians_url, params: { survey_technician: { survey_site_id: @survey_technician.survey_site_id, user_id: @survey_technician.user_id } }
    end

    assert_redirected_to survey_technician_url(SurveyTechnician.last)
  end

  test "should show survey_technician" do
    get survey_technician_url(@survey_technician)
    assert_response :success
  end

  test "should get edit" do
    get edit_survey_technician_url(@survey_technician)
    assert_response :success
  end

  test "should update survey_technician" do
    patch survey_technician_url(@survey_technician), params: { survey_technician: { survey_site_id: @survey_technician.survey_site_id, user_id: @survey_technician.user_id } }
    assert_redirected_to survey_technician_url(@survey_technician)
  end

  test "should destroy survey_technician" do
    assert_difference('SurveyTechnician.count', -1) do
      delete survey_technician_url(@survey_technician)
    end

    assert_redirected_to survey_technicians_url
  end
end
