require 'test_helper'

class UsersConversationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_conversation = users_conversations(:one)
  end

  test "should get index" do
    get users_conversations_url
    assert_response :success
  end

  test "should get new" do
    get new_users_conversation_url
    assert_response :success
  end

  test "should create users_conversation" do
    assert_difference('UsersConversation.count') do
      post users_conversations_url, params: { users_conversation: { conversation_id: @users_conversation.conversation_id, user_id: @users_conversation.user_id } }
    end

    assert_redirected_to users_conversation_url(UsersConversation.last)
  end

  test "should show users_conversation" do
    get users_conversation_url(@users_conversation)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_conversation_url(@users_conversation)
    assert_response :success
  end

  test "should update users_conversation" do
    patch users_conversation_url(@users_conversation), params: { users_conversation: { conversation_id: @users_conversation.conversation_id, user_id: @users_conversation.user_id } }
    assert_redirected_to users_conversation_url(@users_conversation)
  end

  test "should destroy users_conversation" do
    assert_difference('UsersConversation.count', -1) do
      delete users_conversation_url(@users_conversation)
    end

    assert_redirected_to users_conversations_url
  end
end
