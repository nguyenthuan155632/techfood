class SharedImagesController < ApplicationController
  before_action :set_shared_image, only: [:show, :edit, :update, :destroy]

  # GET /shared_images
  # GET /shared_images.json
  def index
    @shared_images = SharedImage.all
  end

  # GET /shared_images/1
  # GET /shared_images/1.json
  def show
  end

  # GET /shared_images/new
  def new
    @shared_image = SharedImage.new
  end

  # GET /shared_images/1/edit
  def edit
  end

  # POST /shared_images
  # POST /shared_images.json
  def create
    @shared_image = SharedImage.new(shared_image_params)

    respond_to do |format|
      if @shared_image.save
        format.html { redirect_to @shared_image, notice: 'Shared image was successfully created.' }
        format.json { render :show, status: :created, location: @shared_image }
      else
        format.html { render :new }
        format.json { render json: @shared_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_images/1
  # PATCH/PUT /shared_images/1.json
  def update
    respond_to do |format|
      if @shared_image.update(shared_image_params)
        format.html { redirect_to @shared_image, notice: 'Shared image was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_image }
      else
        format.html { render :edit }
        format.json { render json: @shared_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_images/1
  # DELETE /shared_images/1.json
  def destroy
    @shared_image.destroy
    respond_to do |format|
      format.html { redirect_to shared_images_url, notice: 'Shared image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_image
      @shared_image = SharedImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_image_params
      params.require(:shared_image).permit(:url, :food_id, :user_id)
    end
end
