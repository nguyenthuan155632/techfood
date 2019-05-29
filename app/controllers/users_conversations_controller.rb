class UsersConversationsController < ApplicationController
  before_action :set_users_conversation, only: [:show, :edit, :update, :destroy]

  # GET /users_conversations
  # GET /users_conversations.json
  def index
    @users_conversations = UsersConversation.all
  end

  # GET /users_conversations/1
  # GET /users_conversations/1.json
  def show
  end

  # GET /users_conversations/new
  def new
    @users_conversation = UsersConversation.new
  end

  # GET /users_conversations/1/edit
  def edit
  end

  # POST /users_conversations
  # POST /users_conversations.json
  def create
    @users_conversation = UsersConversation.new(users_conversation_params)

    respond_to do |format|
      if @users_conversation.save
        format.html { redirect_to @users_conversation, notice: 'Users conversation was successfully created.' }
        format.json { render :show, status: :created, location: @users_conversation }
      else
        format.html { render :new }
        format.json { render json: @users_conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_conversations/1
  # PATCH/PUT /users_conversations/1.json
  def update
    respond_to do |format|
      if @users_conversation.update(users_conversation_params)
        format.html { redirect_to @users_conversation, notice: 'Users conversation was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_conversation }
      else
        format.html { render :edit }
        format.json { render json: @users_conversation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_conversations/1
  # DELETE /users_conversations/1.json
  def destroy
    @users_conversation.destroy
    respond_to do |format|
      format.html { redirect_to users_conversations_url, notice: 'Users conversation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_conversation
      @users_conversation = UsersConversation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_conversation_params
      params.require(:users_conversation).permit(:user_id, :conversation_id)
    end
end
