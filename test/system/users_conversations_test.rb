require "application_system_test_case"

class UsersConversationsTest < ApplicationSystemTestCase
  setup do
    @users_conversation = users_conversations(:one)
  end

  test "visiting the index" do
    visit users_conversations_url
    assert_selector "h1", text: "Users Conversations"
  end

  test "creating a Users conversation" do
    visit users_conversations_url
    click_on "New Users Conversation"

    fill_in "Conversation", with: @users_conversation.conversation_id
    fill_in "User", with: @users_conversation.user_id
    click_on "Create Users conversation"

    assert_text "Users conversation was successfully created"
    click_on "Back"
  end

  test "updating a Users conversation" do
    visit users_conversations_url
    click_on "Edit", match: :first

    fill_in "Conversation", with: @users_conversation.conversation_id
    fill_in "User", with: @users_conversation.user_id
    click_on "Update Users conversation"

    assert_text "Users conversation was successfully updated"
    click_on "Back"
  end

  test "destroying a Users conversation" do
    visit users_conversations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Users conversation was successfully destroyed"
  end
end
