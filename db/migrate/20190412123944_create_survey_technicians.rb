class CreateSurveyTechnicians < ActiveRecord::Migration[5.2]
  def change
    create_table :survey_technicians do |t|
      t.references :survey_site, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
