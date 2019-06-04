require "application_system_test_case"

class CategoriesFoodsTest < ApplicationSystemTestCase
  setup do
    @categories_food = categories_foods(:one)
  end

  test "visiting the index" do
    visit categories_foods_url
    assert_selector "h1", text: "Categories Foods"
  end

  test "creating a Categories food" do
    visit categories_foods_url
    click_on "New Categories Food"

    fill_in "Category", with: @categories_food.category_id
    fill_in "Food", with: @categories_food.food_id
    click_on "Create Categories food"

    assert_text "Categories food was successfully created"
    click_on "Back"
  end

  test "updating a Categories food" do
    visit categories_foods_url
    click_on "Edit", match: :first

    fill_in "Category", with: @categories_food.category_id
    fill_in "Food", with: @categories_food.food_id
    click_on "Update Categories food"

    assert_text "Categories food was successfully updated"
    click_on "Back"
  end

  test "destroying a Categories food" do
    visit categories_foods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categories food was successfully destroyed"
  end
end
