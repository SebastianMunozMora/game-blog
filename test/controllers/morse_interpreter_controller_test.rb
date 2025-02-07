require "test_helper"

class MorseInterpreterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get morse_interpreter_index_url
    assert_response :success
  end
end
