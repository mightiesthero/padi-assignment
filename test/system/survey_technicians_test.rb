require "application_system_test_case"

class SurveyTechniciansTest < ApplicationSystemTestCase
  setup do
    @survey_technician = survey_technicians(:one)
  end

  test "visiting the index" do
    visit survey_technicians_url
    assert_selector "h1", text: "Survey Technicians"
  end

  test "creating a Survey technician" do
    visit survey_technicians_url
    click_on "New Survey Technician"

    fill_in "Survey site", with: @survey_technician.survey_site_id
    fill_in "User", with: @survey_technician.user_id
    click_on "Create Survey technician"

    assert_text "Survey technician was successfully created"
    click_on "Back"
  end

  test "updating a Survey technician" do
    visit survey_technicians_url
    click_on "Edit", match: :first

    fill_in "Survey site", with: @survey_technician.survey_site_id
    fill_in "User", with: @survey_technician.user_id
    click_on "Update Survey technician"

    assert_text "Survey technician was successfully updated"
    click_on "Back"
  end

  test "destroying a Survey technician" do
    visit survey_technicians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Survey technician was successfully destroyed"
  end
end
