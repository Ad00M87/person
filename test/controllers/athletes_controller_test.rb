require 'test_helper'

class AthletesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get athletes_index_url
    assert_response :success
  end

  test "should get show" do
    get athletes_show_url
    assert_response :success
  end

  test "should get new" do
    get athletes_new_url
    assert_response :success
  end

  test "should get delete" do
    get athletes_delete_url
    assert_response :success
  end

end
