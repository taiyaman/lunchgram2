require 'test_helper'

class LunchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lunch_index_url
    assert_response :success
  end

  test "should get show" do
    get lunch_show_url
    assert_response :success
  end

  test "should get new" do
    get lunch_new_url
    assert_response :success
  end

  test "should get edit" do
    get lunch_edit_url
    assert_response :success
  end

end
