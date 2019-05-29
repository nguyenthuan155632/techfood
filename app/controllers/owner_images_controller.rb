class OwnerImagesController < ApplicationController
  before_action :set_owner_image, only: [:show, :edit, :update, :destroy]

  # GET /owner_images
  # GET /owner_images.json
  def index
    @owner_images = OwnerImage.all
  end

  # GET /owner_images/1
  # GET /owner_images/1.json
  def show
  end

  # GET /owner_images/new
  def new
    @owner_image = OwnerImage.new
  end

  # GET /owner_images/1/edit
  def edit
  end

  # POST /owner_images
  # POST /owner_images.json
  def create
    @owner_image = OwnerImage.new(owner_image_params)

    respond_to do |format|
      if @owner_image.save
        format.html { redirect_to @owner_image, notice: 'Owner image was successfully created.' }
        format.json { render :show, status: :created, location: @owner_image }
      else
        format.html { render :new }
        format.json { render json: @owner_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owner_images/1
  # PATCH/PUT /owner_images/1.json
  def update
    respond_to do |format|
      if @owner_image.update(owner_image_params)
        format.html { redirect_to @owner_image, notice: 'Owner image was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner_image }
      else
        format.html { render :edit }
        format.json { render json: @owner_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owner_images/1
  # DELETE /owner_images/1.json
  def destroy
    @owner_image.destroy
    respond_to do |format|
      format.html { redirect_to owner_images_url, notice: 'Owner image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner_image
      @owner_image = OwnerImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_image_params
      params.require(:owner_image).permit(:url, :food_id, :user_id)
    end
end
