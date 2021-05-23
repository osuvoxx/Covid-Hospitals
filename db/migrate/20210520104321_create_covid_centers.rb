class CreateCovidCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :covid_centers do |t|
      t.string :district
      t.string :hospital
      t.string :center
      t.integer :helpline
      t.string :maplink

      t.timestamps
    end
  end
end
