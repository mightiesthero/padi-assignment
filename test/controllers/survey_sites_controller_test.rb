require 'test_helper'

class SurveySitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @survey_site = survey_sites(:one)
  end

  test "should get index" do
    get survey_sites_url
    assert_response :success
  end

  test "should get new" do
    get new_survey_site_url
    assert_response :success
  end

  test "should create survey_site" do
    assert_difference('SurveySite.count') do
      post survey_sites_url, params: { survey_site: { address: @survey_site.address, city: @survey_site.city, clientname: @survey_site.clientname, longitude: @survey_site.longitude, sale_id: @survey_site.sale_id, status: @survey_site.status, user_id: @survey_site.user_id } }
    end

    assert_redirected_to survey_site_url(SurveySite.last)
  end

  test "should show survey_site" do
    get survey_site_url(@survey_site)
    assert_response :success
  end

  test "should get edit" do
    get edit_survey_site_url(@survey_site)
    assert_response :success
  end

  test "should update survey_site" do
    patch survey_site_url(@survey_site), params: { survey_site: { address: @survey_site.address, city: @survey_site.city, clientname: @survey_site.clientname, longitude: @survey_site.longitude, sale_id: @survey_site.sale_id, status: @survey_site.status, user_id: @survey_site.user_id } }
    assert_redirected_to survey_site_url(@survey_site)
  end

  test "should destroy survey_site" do
    assert_difference('SurveySite.count', -1) do
      delete survey_site_url(@survey_site)
    end

    assert_redirected_to survey_sites_url
  end
end
