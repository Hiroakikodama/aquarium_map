require 'test_helper'

class Admins::AquariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admins_aquarium = admins_aquaria(:one)
  end

  test "should get index" do
    get admins_aquaria_url
    assert_response :success
  end

  test "should get new" do
    get new_admins_aquarium_url
    assert_response :success
  end

  test "should create admins_aquarium" do
    assert_difference('Admins::Aquarium.count') do
      post admins_aquaria_url, params: { admins_aquarium: {  } }
    end

    assert_redirected_to admins_aquarium_url(Admins::Aquarium.last)
  end

  test "should show admins_aquarium" do
    get admins_aquarium_url(@admins_aquarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_admins_aquarium_url(@admins_aquarium)
    assert_response :success
  end

  test "should update admins_aquarium" do
    patch admins_aquarium_url(@admins_aquarium), params: { admins_aquarium: {  } }
    assert_redirected_to admins_aquarium_url(@admins_aquarium)
  end

  test "should destroy admins_aquarium" do
    assert_difference('Admins::Aquarium.count', -1) do
      delete admins_aquarium_url(@admins_aquarium)
    end

    assert_redirected_to admins_aquaria_url
  end
end
