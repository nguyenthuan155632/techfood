require 'test_helper'

class SharedImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_image = shared_images(:one)
  end

  test "should get index" do
    get shared_images_url
    assert_response :success
  end

  test "should get new" do
    get new_shared_image_url
    assert_response :success
  end

  test "should create shared_image" do
    assert_difference('SharedImage.count') do
      post shared_images_url, params: { shared_image: { food_id: @shared_image.food_id, url: @shared_image.url, user_id: @shared_image.user_id } }
    end

    assert_redirected_to shared_image_url(SharedImage.last)
  end

  test "should show shared_image" do
    get shared_image_url(@shared_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_shared_image_url(@shared_image)
    assert_response :success
  end

  test "should update shared_image" do
    patch shared_image_url(@shared_image), params: { shared_image: { food_id: @shared_image.food_id, url: @shared_image.url, user_id: @shared_image.user_id } }
    assert_redirected_to shared_image_url(@shared_image)
  end

  test "should destroy shared_image" do
    assert_difference('SharedImage.count', -1) do
      delete shared_image_url(@shared_image)
    end

    assert_redirected_to shared_images_url
  end
end
