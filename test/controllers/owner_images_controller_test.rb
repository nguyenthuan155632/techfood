require 'test_helper'

class OwnerImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner_image = owner_images(:one)
  end

  test "should get index" do
    get owner_images_url
    assert_response :success
  end

  test "should get new" do
    get new_owner_image_url
    assert_response :success
  end

  test "should create owner_image" do
    assert_difference('OwnerImage.count') do
      post owner_images_url, params: { owner_image: { food_id: @owner_image.food_id, url: @owner_image.url, user_id: @owner_image.user_id } }
    end

    assert_redirected_to owner_image_url(OwnerImage.last)
  end

  test "should show owner_image" do
    get owner_image_url(@owner_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_owner_image_url(@owner_image)
    assert_response :success
  end

  test "should update owner_image" do
    patch owner_image_url(@owner_image), params: { owner_image: { food_id: @owner_image.food_id, url: @owner_image.url, user_id: @owner_image.user_id } }
    assert_redirected_to owner_image_url(@owner_image)
  end

  test "should destroy owner_image" do
    assert_difference('OwnerImage.count', -1) do
      delete owner_image_url(@owner_image)
    end

    assert_redirected_to owner_images_url
  end
end
