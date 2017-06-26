class CreateAdminAreaLevel1s < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_area_level1s do |t|
      t.string :name
      t.string :short_name
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
