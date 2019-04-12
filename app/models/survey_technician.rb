class SurveyTechnician < ApplicationRecord
  belongs_to :survey_site
  belongs_to :user
end
