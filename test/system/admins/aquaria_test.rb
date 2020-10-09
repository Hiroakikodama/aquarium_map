require "application_system_test_case"

class Admins::AquariaTest < ApplicationSystemTestCase
  setup do
    @admins_aquarium = admins_aquaria(:one)
  end

  test "visiting the index" do
    visit admins_aquaria_url
    assert_selector "h1", text: "Admins/Aquaria"
  end

  test "creating a Aquarium" do
    visit admins_aquaria_url
    click_on "New Admins/Aquarium"

    click_on "Create Aquarium"

    assert_text "Aquarium was successfully created"
    click_on "Back"
  end

  test "updating a Aquarium" do
    visit admins_aquaria_url
    click_on "Edit", match: :first

    click_on "Update Aquarium"

    assert_text "Aquarium was successfully updated"
    click_on "Back"
  end

  test "destroying a Aquarium" do
    visit admins_aquaria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aquarium was successfully destroyed"
  end
end
