class SurveySite < ApplicationRecord
  belongs_to :user
  belongs_to :sales, class_name: "User"

  has_many :survey_technicians
  accepts_nested_attributes_for :survey_technicians

  has_many :survey_images
  accepts_nested_attributes_for :survey_images

  validates :user_id, presence: true

  STATUS = {
    "0" => "tidak dapat dilaksanakan",
    "1" => "dapat dilaksanakan",
    "2" => "dapat dilaksanakan dengan syarat"
  }
end
