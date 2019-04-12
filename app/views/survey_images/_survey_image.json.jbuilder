json.extract! survey_image, :id, :name, :img, :description, :survey_site_id, :created_at, :updated_at
json.url survey_image_url(survey_image, format: :json)
