require "test_helper"

class ProductosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get productos_index_url
    assert_response :success
  end

  test "should get show" do
    get productos_show_url
    assert_response :success
  end
end
