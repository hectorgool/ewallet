require 'test_helper'

class CommissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commissions_index_url
    assert_response :success
  end

  test "should get show" do
    get commissions_show_url
    assert_response :success
  end

  test "should get new" do
    get commissions_new_url
    assert_response :success
  end

  test "should get create" do
    get commissions_create_url
    assert_response :success
  end

  test "should get edit" do
    get commissions_edit_url
    assert_response :success
  end

  test "should get update" do
    get commissions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get commissions_destroy_url
    assert_response :success
  end

end
