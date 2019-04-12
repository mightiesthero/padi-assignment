class CreateSurveyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :survey_images do |t|
      t.string :name
      t.binary :img
      t.text :description
      t.references :survey_site, foreign_key: true

      t.timestamps
    end
  end
end
