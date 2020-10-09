require 'test_helper'

class AquariumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aquarium_index_url
    assert_response :success
  end

  test "should get show" do
    get aquarium_show_url
    assert_response :success
  end

  test "should get create" do
    get aquarium_create_url
    assert_response :success
  end

  test "should get edit" do
    get aquarium_edit_url
    assert_response :success
  end

end
