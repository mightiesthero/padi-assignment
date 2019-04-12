require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get get_users" do
    get api_get_users_url
    assert_response :success
  end

  test "should get authenticate" do
    get api_authenticate_url
    assert_response :success
  end

  test "should get submit" do
    get api_submit_url
    assert_response :success
  end

end
