require "application_system_test_case"

class SurveyImagesTest < ApplicationSystemTestCase
  setup do
    @survey_image = survey_images(:one)
  end

  test "visiting the index" do
    visit survey_images_url
    assert_selector "h1", text: "Survey Images"
  end

  test "creating a Survey image" do
    visit survey_images_url
    click_on "New Survey Image"

    fill_in "Description", with: @survey_image.description
    fill_in "Img", with: @survey_image.img
    fill_in "Name", with: @survey_image.name
    fill_in "Survey site", with: @survey_image.survey_site_id
    click_on "Create Survey image"

    assert_text "Survey image was successfully created"
    click_on "Back"
  end

  test "updating a Survey image" do
    visit survey_images_url
    click_on "Edit", match: :first

    fill_in "Description", with: @survey_image.description
    fill_in "Img", with: @survey_image.img
    fill_in "Name", with: @survey_image.name
    fill_in "Survey site", with: @survey_image.survey_site_id
    click_on "Update Survey image"

    assert_text "Survey image was successfully updated"
    click_on "Back"
  end

  test "destroying a Survey image" do
    visit survey_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Survey image was successfully destroyed"
  end
end
