class FoodInformationsController < ApplicationController
  before_action :set_food_information, only: [:show, :edit, :update, :destroy]

  # GET /food_informations
  # GET /food_informations.json
  def index
    @food_informations = FoodInformation.all
  end

  # GET /food_informations/1
  # GET /food_informations/1.json
  def show
  end

  # GET /food_informations/new
  def new
    @food_information = FoodInformation.new
  end

  # GET /food_informations/1/edit
  def edit
  end

  # POST /food_informations
  # POST /food_informations.json
  def create
    @food_information = FoodInformation.new(food_information_params)

    respond_to do |format|
      if @food_information.save
        format.html { redirect_to @food_information, notice: 'Food information was successfully created.' }
        format.json { render :show, status: :created, location: @food_information }
      else
        format.html { render :new }
        format.json { render json: @food_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_informations/1
  # PATCH/PUT /food_informations/1.json
  def update
    respond_to do |format|
      if @food_information.update(food_information_params)
        format.html { redirect_to @food_information, notice: 'Food information was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_information }
      else
        format.html { render :edit }
        format.json { render json: @food_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_informations/1
  # DELETE /food_informations/1.json
  def destroy
    @food_information.destroy
    respond_to do |format|
      format.html { redirect_to food_informations_url, notice: 'Food information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_information
      @food_information = FoodInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_information_params
      params.require(:food_information).permit(:food_id, :description, :detail, :address, :phone_number)
    end
end
