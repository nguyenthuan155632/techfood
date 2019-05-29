require 'test_helper'

class FoodInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_information = food_informations(:one)
  end

  test "should get index" do
    get food_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_food_information_url
    assert_response :success
  end

  test "should create food_information" do
    assert_difference('FoodInformation.count') do
      post food_informations_url, params: { food_information: { address: @food_information.address, description: @food_information.description, detail: @food_information.detail, food_id: @food_information.food_id, phone_number: @food_information.phone_number } }
    end

    assert_redirected_to food_information_url(FoodInformation.last)
  end

  test "should show food_information" do
    get food_information_url(@food_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_information_url(@food_information)
    assert_response :success
  end

  test "should update food_information" do
    patch food_information_url(@food_information), params: { food_information: { address: @food_information.address, description: @food_information.description, detail: @food_information.detail, food_id: @food_information.food_id, phone_number: @food_information.phone_number } }
    assert_redirected_to food_information_url(@food_information)
  end

  test "should destroy food_information" do
    assert_difference('FoodInformation.count', -1) do
      delete food_information_url(@food_information)
    end

    assert_redirected_to food_informations_url
  end
end
