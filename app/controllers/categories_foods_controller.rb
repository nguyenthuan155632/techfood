class CategoriesFoodsController < ApplicationController
  before_action :set_categories_food, only: [:show, :edit, :update, :destroy]

  # GET /categories_foods
  # GET /categories_foods.json
  def index
    @categories_foods = CategoriesFood.all
  end

  # GET /categories_foods/1
  # GET /categories_foods/1.json
  def show
  end

  # GET /categories_foods/new
  def new
    @categories_food = CategoriesFood.new
  end

  # GET /categories_foods/1/edit
  def edit
  end

  # POST /categories_foods
  # POST /categories_foods.json
  def create
    @categories_food = CategoriesFood.new(categories_food_params)

    respond_to do |format|
      if @categories_food.save
        format.html { redirect_to @categories_food, notice: 'Categories food was successfully created.' }
        format.json { render :show, status: :created, location: @categories_food }
      else
        format.html { render :new }
        format.json { render json: @categories_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_foods/1
  # PATCH/PUT /categories_foods/1.json
  def update
    respond_to do |format|
      if @categories_food.update(categories_food_params)
        format.html { redirect_to @categories_food, notice: 'Categories food was successfully updated.' }
        format.json { render :show, status: :ok, location: @categories_food }
      else
        format.html { render :edit }
        format.json { render json: @categories_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_foods/1
  # DELETE /categories_foods/1.json
  def destroy
    @categories_food.destroy
    respond_to do |format|
      format.html { redirect_to categories_foods_url, notice: 'Categories food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_food
      @categories_food = CategoriesFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categories_food_params
      params.require(:categories_food).permit(:category_id, :food_id)
    end
end
