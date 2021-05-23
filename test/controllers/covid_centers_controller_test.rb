require "test_helper"

class CovidCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @covid_center = covid_centers(:one)
  end

  test "should get index" do
    get covid_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_covid_center_url
    assert_response :success
  end

  test "should create covid_center" do
    assert_difference('CovidCenter.count') do
      post covid_centers_url, params: { covid_center: { center: @covid_center.center, district: @covid_center.district, helpline: @covid_center.helpline, hospital: @covid_center.hospital, maplink: @covid_center.maplink } }
    end

    assert_redirected_to covid_center_url(CovidCenter.last)
  end

  test "should show covid_center" do
    get covid_center_url(@covid_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_covid_center_url(@covid_center)
    assert_response :success
  end

  test "should update covid_center" do
    patch covid_center_url(@covid_center), params: { covid_center: { center: @covid_center.center, district: @covid_center.district, helpline: @covid_center.helpline, hospital: @covid_center.hospital, maplink: @covid_center.maplink } }
    assert_redirected_to covid_center_url(@covid_center)
  end

  test "should destroy covid_center" do
    assert_difference('CovidCenter.count', -1) do
      delete covid_center_url(@covid_center)
    end

    assert_redirected_to covid_centers_url
  end
end
