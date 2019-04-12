require 'test_helper'

class SurveyImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @survey_image = survey_images(:one)
  end

  test "should get index" do
    get survey_images_url
    assert_response :success
  end

  test "should get new" do
    get new_survey_image_url
    assert_response :success
  end

  test "should create survey_image" do
    assert_difference('SurveyImage.count') do
      post survey_images_url, params: { survey_image: { description: @survey_image.description, img: @survey_image.img, name: @survey_image.name, survey_site_id: @survey_image.survey_site_id } }
    end

    assert_redirected_to survey_image_url(SurveyImage.last)
  end

  test "should show survey_image" do
    get survey_image_url(@survey_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_survey_image_url(@survey_image)
    assert_response :success
  end

  test "should update survey_image" do
    patch survey_image_url(@survey_image), params: { survey_image: { description: @survey_image.description, img: @survey_image.img, name: @survey_image.name, survey_site_id: @survey_image.survey_site_id } }
    assert_redirected_to survey_image_url(@survey_image)
  end

  test "should destroy survey_image" do
    assert_difference('SurveyImage.count', -1) do
      delete survey_image_url(@survey_image)
    end

    assert_redirected_to survey_images_url
  end
end
