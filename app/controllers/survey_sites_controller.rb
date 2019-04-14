class SurveySitesController < ApplicationController
  before_action :set_survey_site, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /survey_sites
  # GET /survey_sites.json
  def index
    @survey_sites = SurveySite.order(sort_column + ' ' + sort_direction)
  end

  # GET /survey_sites/1
  # GET /survey_sites/1.json
  def show
  end

  # GET /survey_sites/new
  def new
    @survey_site = SurveySite.new
  end

  # GET /survey_sites/1/edit
  def edit
  end

  # POST /survey_sites
  # POST /survey_sites.json
  def create
    @survey_site = SurveySite.new(survey_site_params)

    respond_to do |format|
      if @survey_site.save
        format.html { redirect_to @survey_site, notice: 'Survey site was successfully created.' }
        format.json { render :show, status: :created, location: @survey_site }
      else
        format.html { render :new }
        format.json { render json: @survey_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /survey_sites/1
  # PATCH/PUT /survey_sites/1.json
  def update
    respond_to do |format|
      if @survey_site.update(survey_site_params)
        format.html { redirect_to @survey_site, notice: 'Survey site was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey_site }
      else
        format.html { render :edit }
        format.json { render json: @survey_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_sites/1
  # DELETE /survey_sites/1.json
  def destroy
    @survey_site.destroy
    respond_to do |format|
      format.html { redirect_to survey_sites_url, notice: 'Survey site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey_site
      @survey_site = SurveySite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_site_params
      params.require(:survey_site).permit(:clientname, :address, :city, :longitude, :status, :sale_id, :user_id)
    end

    def sort_column
      SurveySite.column_names.include?(params[:sort]) || params[:sort] == "users.role" ? params[:sort] : "created_at"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "DESC"
    end

end
