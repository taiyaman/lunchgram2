require 'test_helper'

class LunchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lunchs_index_url
    assert_response :success
  end

  test "should get show" do
    get lunchs_show_url
    assert_response :success
  end

  test "should get new" do
    get lunchs_new_url
    assert_response :success
  end

  test "should get edit" do
    get lunchs_edit_url
    assert_response :success
  end

end
