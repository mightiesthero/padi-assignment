json.extract! survey_site, :id, :clientname, :address, :city, :longitude, :status, :sale_id, :user_id, :created_at, :updated_at
json.url survey_site_url(survey_site, format: :json)
