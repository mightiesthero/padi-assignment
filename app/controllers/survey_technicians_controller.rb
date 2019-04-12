class SurveyTechniciansController < ApplicationController
  before_action :set_survey_technician, only: [:show, :edit, :update, :destroy]

  # GET /survey_technicians
  # GET /survey_technicians.json
  def index
    @survey_technicians = SurveyTechnician.all
  end

  # GET /survey_technicians/1
  # GET /survey_technicians/1.json
  def show
  end

  # GET /survey_technicians/new
  def new
    @survey_technician = SurveyTechnician.new
  end

  # GET /survey_technicians/1/edit
  def edit
  end

  # POST /survey_technicians
  # POST /survey_technicians.json
  def create
    @survey_technician = SurveyTechnician.new(survey_technician_params)

    respond_to do |format|
      if @survey_technician.save
        format.html { redirect_to @survey_technician, notice: 'Survey technician was successfully created.' }
        format.json { render :show, status: :created, location: @survey_technician }
      else
        format.html { render :new }
        format.json { render json: @survey_technician.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_technicians/1
  # PATCH/PUT /survey_technicians/1.json
  def update
    respond_to do |format|
      if @survey_technician.update(survey_technician_params)
        format.html { redirect_to @survey_technician, notice: 'Survey technician was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_technician }
      else
        format.html { render :edit }
        format.json { render json: @survey_technician.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_technicians/1
  # DELETE /survey_technicians/1.json
  def destroy
    @survey_technician.destroy
    respond_to do |format|
      format.html { redirect_to survey_technicians_url, notice: 'Survey technician was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_technician
      @survey_technician = SurveyTechnician.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_technician_params
      params.require(:survey_technician).permit(:survey_site_id, :user_id)
    end
end
