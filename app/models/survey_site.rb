class SurveySite < ApplicationRecord
  belongs_to :user
  belongs_to :sales, class_name: "User"

  validates :user_id, presence: true
end
