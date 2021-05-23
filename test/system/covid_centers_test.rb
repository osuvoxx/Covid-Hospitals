require "application_system_test_case"

class CovidCentersTest < ApplicationSystemTestCase
  setup do
    @covid_center = covid_centers(:one)
  end

  test "visiting the index" do
    visit covid_centers_url
    assert_selector "h1", text: "Covid Centers"
  end

  test "creating a Covid center" do
    visit covid_centers_url
    click_on "New Covid Center"

    fill_in "Center", with: @covid_center.center
    fill_in "District", with: @covid_center.district
    fill_in "Helpline", with: @covid_center.helpline
    fill_in "Hospital", with: @covid_center.hospital
    fill_in "Maplink", with: @covid_center.maplink
    click_on "Create Covid center"

    assert_text "Covid center was successfully created"
    click_on "Back"
  end

  test "updating a Covid center" do
    visit covid_centers_url
    click_on "Edit", match: :first

    fill_in "Center", with: @covid_center.center
    fill_in "District", with: @covid_center.district
    fill_in "Helpline", with: @covid_center.helpline
    fill_in "Hospital", with: @covid_center.hospital
    fill_in "Maplink", with: @covid_center.maplink
    click_on "Update Covid center"

    assert_text "Covid center was successfully updated"
    click_on "Back"
  end

  test "destroying a Covid center" do
    visit covid_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Covid center was successfully destroyed"
  end
end
