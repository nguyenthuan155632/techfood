require "application_system_test_case"

class FoodInformationsTest < ApplicationSystemTestCase
  setup do
    @food_information = food_informations(:one)
  end

  test "visiting the index" do
    visit food_informations_url
    assert_selector "h1", text: "Food Informations"
  end

  test "creating a Food information" do
    visit food_informations_url
    click_on "New Food Information"

    fill_in "Address", with: @food_information.address
    fill_in "Description", with: @food_information.description
    fill_in "Detail", with: @food_information.detail
    fill_in "Food", with: @food_information.food_id
    fill_in "Phone number", with: @food_information.phone_number
    click_on "Create Food information"

    assert_text "Food information was successfully created"
    click_on "Back"
  end

  test "updating a Food information" do
    visit food_informations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @food_information.address
    fill_in "Description", with: @food_information.description
    fill_in "Detail", with: @food_information.detail
    fill_in "Food", with: @food_information.food_id
    fill_in "Phone number", with: @food_information.phone_number
    click_on "Update Food information"

    assert_text "Food information was successfully updated"
    click_on "Back"
  end

  test "destroying a Food information" do
    visit food_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food information was successfully destroyed"
  end
end
