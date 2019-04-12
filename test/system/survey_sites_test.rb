require "application_system_test_case"

class SurveySitesTest < ApplicationSystemTestCase
  setup do
    @survey_site = survey_sites(:one)
  end

  test "visiting the index" do
    visit survey_sites_url
    assert_selector "h1", text: "Survey Sites"
  end

  test "creating a Survey site" do
    visit survey_sites_url
    click_on "New Survey Site"

    fill_in "Address", with: @survey_site.address
    fill_in "City", with: @survey_site.city
    fill_in "Clientname", with: @survey_site.clientname
    fill_in "Longitude", with: @survey_site.longitude
    fill_in "Sale", with: @survey_site.sale_id
    check "Status" if @survey_site.status
    fill_in "User", with: @survey_site.user_id
    click_on "Create Survey site"

    assert_text "Survey site was successfully created"
    click_on "Back"
  end

  test "updating a Survey site" do
    visit survey_sites_url
    click_on "Edit", match: :first

    fill_in "Address", with: @survey_site.address
    fill_in "City", with: @survey_site.city
    fill_in "Clientname", with: @survey_site.clientname
    fill_in "Longitude", with: @survey_site.longitude
    fill_in "Sale", with: @survey_site.sale_id
    check "Status" if @survey_site.status
    fill_in "User", with: @survey_site.user_id
    click_on "Update Survey site"

    assert_text "Survey site was successfully updated"
    click_on "Back"
  end

  test "destroying a Survey site" do
    visit survey_sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Survey site was successfully destroyed"
  end
end
