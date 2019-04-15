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
    email_status = ""
    # TODO: save survey_images
    survey = @user.survey_sites.new(submit_params)

    message = "Survey saved"
    if survey.save
      link = "#{request.protocol}#{request.host_with_port}#{survey_site_path(survey)}"
      message = "#{message} #{link}"
      # TODO: refactor
      begin
        UserMailer.survey(params[:email], survey, link).deliver_now
        email_status = "send email success"
      rescue
        email_status = "send email error"
      end
    else
      message = survey.errors.full_messages
    end

    result = {
      message: message,
      email_status: email_status
    }
    render json: result.to_json
  end

  private
    def find_user
      @user = User.find_by(email: params[:email])
    end

    def submit_params
      if params[:sales]
        sales = User.find_by(email: params[:sales])
        params[:sales_id] = sales.id
      end

      params[:survey_technicians_attributes].each do |survey_technician|
        if survey_technician[:email]
          technician = User.find_by(email: survey_technician[:email])
          survey_technician[:user_id] = technician.id
        end
      end

      params.permit(
        :clientname,
        :address,
        :city,
        :longitude,
        :latitude,
        :status,
        :sales_id,
        survey_technicians_attributes: [
          :user_id
        ])
    end
end
