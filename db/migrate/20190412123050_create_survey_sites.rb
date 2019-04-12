class CreateSurveySites < ActiveRecord::Migration[5.2]
  def change
    create_table :survey_sites do |t|
      t.string :clientname
      t.string :address
      t.string :city
      t.string :longitude
      t.string :latitude
      t.string :status
      t.integer :sale_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
