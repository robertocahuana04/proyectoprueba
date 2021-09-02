require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get dasboard" do
    get home_dasboard_url
    assert_response :success
  end
end
