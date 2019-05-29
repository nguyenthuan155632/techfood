require "application_system_test_case"

class SharedImagesTest < ApplicationSystemTestCase
  setup do
    @shared_image = shared_images(:one)
  end

  test "visiting the index" do
    visit shared_images_url
    assert_selector "h1", text: "Shared Images"
  end

  test "creating a Shared image" do
    visit shared_images_url
    click_on "New Shared Image"

    fill_in "Food", with: @shared_image.food_id
    fill_in "Url", with: @shared_image.url
    fill_in "User", with: @shared_image.user_id
    click_on "Create Shared image"

    assert_text "Shared image was successfully created"
    click_on "Back"
  end

  test "updating a Shared image" do
    visit shared_images_url
    click_on "Edit", match: :first

    fill_in "Food", with: @shared_image.food_id
    fill_in "Url", with: @shared_image.url
    fill_in "User", with: @shared_image.user_id
    click_on "Update Shared image"

    assert_text "Shared image was successfully updated"
    click_on "Back"
  end

  test "destroying a Shared image" do
    visit shared_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shared image was successfully destroyed"
  end
end
