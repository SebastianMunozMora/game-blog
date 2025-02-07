require "test_helper"

class DateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get date_index_url
    assert_response :success
  end

  test "should get latest" do
    get date_latest_url
    assert_response :success
  end

  test "should get oldest" do
    get date_oldest_url
    assert_response :success
  end
end
