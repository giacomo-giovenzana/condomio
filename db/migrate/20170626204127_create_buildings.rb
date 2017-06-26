class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :route
      t.string :street_number
      t.string :postal_code
      t.string :hamlet
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.references :locality, foreign_key: true

      t.timestamps
    end
  end
end
