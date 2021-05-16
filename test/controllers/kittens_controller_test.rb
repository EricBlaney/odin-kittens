require "test_helper"

class KittensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kittens_index_url
    assert_response :success
  end

  test "should get get" do
    get kittens_get_url
    assert_response :success
  end

  test "should get new" do
    get kittens_new_url
    assert_response :success
  end

  test "should get show" do
    get kittens_show_url
    assert_response :success
  end

  test "should get post" do
    get kittens_post_url
    assert_response :success
  end

  test "should get edit" do
    get kittens_edit_url
    assert_response :success
  end

  test "should get put" do
    get kittens_put_url
    assert_response :success
  end

  test "should get delete" do
    get kittens_delete_url
    assert_response :success
  end
end
