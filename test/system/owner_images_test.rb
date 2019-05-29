require "application_system_test_case"

class OwnerImagesTest < ApplicationSystemTestCase
  setup do
    @owner_image = owner_images(:one)
  end

  test "visiting the index" do
    visit owner_images_url
    assert_selector "h1", text: "Owner Images"
  end

  test "creating a Owner image" do
    visit owner_images_url
    click_on "New Owner Image"

    fill_in "Food", with: @owner_image.food_id
    fill_in "Url", with: @owner_image.url
    fill_in "User", with: @owner_image.user_id
    click_on "Create Owner image"

    assert_text "Owner image was successfully created"
    click_on "Back"
  end

  test "updating a Owner image" do
    visit owner_images_url
    click_on "Edit", match: :first

    fill_in "Food", with: @owner_image.food_id
    fill_in "Url", with: @owner_image.url
    fill_in "User", with: @owner_image.user_id
    click_on "Update Owner image"

    assert_text "Owner image was successfully updated"
    click_on "Back"
  end

  test "destroying a Owner image" do
    visit owner_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Owner image was successfully destroyed"
  end
end
