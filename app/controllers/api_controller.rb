class ApiController < ApplicationController
  protect_from_forgery with: :null_session

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
    survey = SurveySite.new(submit_params)
    # byebug

    message = "Survey saved"
    if survey.save
      message = message
    else
      message = survey.errors.full_messages
    end

    result = {
      message: message
    }
    render json: result.to_json
  end

  private
    def submit_params
      puts params[:email]
      user = User.find_by(email: params[:email])
      params[:user_id] = user.id
      params.permit(:clientname, :address, :city, :longitude, :status, :sale_id, :user_id)
    end
end
