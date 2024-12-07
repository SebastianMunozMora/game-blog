require "test_helper"

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get coolHello" do
    get hello_coolHello_url
    assert_response :success
  end

  test "should get niceHello" do
    get hello_niceHello_url
    assert_response :success
  end
end
