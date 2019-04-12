class SurveyImagesController < ApplicationController
  before_action :set_survey_image, only: [:show, :edit, :update, :destroy]

  # GET /survey_images
  # GET /survey_images.json
  def index
    @survey_images = SurveyImage.all
  end

  # GET /survey_images/1
  # GET /survey_images/1.json
  def show
  end

  # GET /survey_images/new
  def new
    @survey_image = SurveyImage.new
  end

  # GET /survey_images/1/edit
  def edit
  end

  # POST /survey_images
  # POST /survey_images.json
  def create
    @survey_image = SurveyImage.new(survey_image_params)

    respond_to do |format|
      if @survey_image.save
        format.html { redirect_to @survey_image, notice: 'Survey image was successfully created.' }
        format.json { render :show, status: :created, location: @survey_image }
      else
        format.html { render :new }
        format.json { render json: @survey_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_images/1
  # PATCH/PUT /survey_images/1.json
  def update
    respond_to do |format|
      if @survey_image.update(survey_image_params)
        format.html { redirect_to @survey_image, notice: 'Survey image was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_image }
      else
        format.html { render :edit }
        format.json { render json: @survey_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_images/1
  # DELETE /survey_images/1.json
  def destroy
    @survey_image.destroy
    respond_to do |format|
      format.html { redirect_to survey_images_url, notice: 'Survey image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_image
      @survey_image = SurveyImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_image_params
      params.require(:survey_image).permit(:name, :img, :description, :survey_site_id)
    end
end
