require 'test_helper'

class Api::QuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_quests_index_url
    assert_response :success
  end

  test "should get create" do
    get api_quests_create_url
    assert_response :success
  end

  test "should get show" do
    get api_quests_show_url
    assert_response :success
  end

  test "should get update" do
    get api_quests_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_quests_destroy_url
    assert_response :success
  end

end
