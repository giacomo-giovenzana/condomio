class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :country_short
      t.string :region
      t.string :region_short
      t.string :province
      t.string :province_short
      t.string :locality
      t.string :hamlet
      t.string :route
      t.string :street_number
      t.string :postal_code
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
