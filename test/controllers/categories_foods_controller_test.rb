require 'test_helper'

class CategoriesFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categories_food = categories_foods(:one)
  end

  test "should get index" do
    get categories_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_categories_food_url
    assert_response :success
  end

  test "should create categories_food" do
    assert_difference('CategoriesFood.count') do
      post categories_foods_url, params: { categories_food: { category_id: @categories_food.category_id, food_id: @categories_food.food_id } }
    end

    assert_redirected_to categories_food_url(CategoriesFood.last)
  end

  test "should show categories_food" do
    get categories_food_url(@categories_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_categories_food_url(@categories_food)
    assert_response :success
  end

  test "should update categories_food" do
    patch categories_food_url(@categories_food), params: { categories_food: { category_id: @categories_food.category_id, food_id: @categories_food.food_id } }
    assert_redirected_to categories_food_url(@categories_food)
  end

  test "should destroy categories_food" do
    assert_difference('CategoriesFood.count', -1) do
      delete categories_food_url(@categories_food)
    end

    assert_redirected_to categories_foods_url
  end
end
