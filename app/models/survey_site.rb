class SurveySite < ApplicationRecord
  belongs_to :user
  belongs_to :sales, class_name: "User"

  validates :user_id, presence: true

  STATUS = {
    "0" => "tidak dapat dilaksanakan",
    "1" => "dapat dilaksanakan",
    "2" => "dapat dilaksanakan dengan syarat"
  }
end
