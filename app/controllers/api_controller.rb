class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :find_user, only: [:submit]

  def get_users
    @users = User.all
  end

  def authenticate
    result = {
      message: ""
    }
    render json: result.to_json
  end

  def submit
    survey = @user.survey_sites.new(submit_params)

    message = "Survey saved"
    if survey.save
      link = "#{request.protocol}#{request.host_with_port}#{survey_site_path(survey)}"
      message = "#{message} #{link}"
      UserMailer.survey(params[:email], survey, link).deliver_now
    else
      message = survey.errors.full_messages
    end

    result = {
      message: message
    }
    render json: result.to_json
  end

  private
    def find_user
      @user = User.find_by(email: params[:email])
    end

    def submit_params
      # sales = User.find_by(email: params[:sales])
      # params[:user_id] = sales.id
      params.permit(:clientname, :address, :city, :longitude, :latitude, :status, :sales_id, :user_id)
    end
end
