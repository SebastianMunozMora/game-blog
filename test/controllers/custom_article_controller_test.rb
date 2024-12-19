require "test_helper"

class CustomArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get custom_article_index_url
    assert_response :success
  end
end
