class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :locality
      t.string :short_name
      t.string :route
      t.string :street_number
      t.string :postal_code
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.references :admin_area_level2, foreign_key: true

      t.timestamps
    end
  end
end
