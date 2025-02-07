require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get category_index_url
    assert_response :success
  end

  test "should get video-games" do
    get category_video-games_url
    assert_response :success
  end

  test "should get movies" do
    get category_movies_url
    assert_response :success
  end

  test "should get comics" do
    get category_comics_url
    assert_response :success
  end

  test "should get books" do
    get category_books_url
    assert_response :success
  end

  test "should get tech" do
    get category_tech_url
    assert_response :success
  end

  test "should get entertainment" do
    get category_entertainment_url
    assert_response :success
  end

  test "should get science" do
    get category_science_url
    assert_response :success
  end

  test "should get lifestyle" do
    get category_lifestyle_url
    assert_response :success
  end
end
