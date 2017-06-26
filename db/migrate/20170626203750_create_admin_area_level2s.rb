class CreateAdminAreaLevel2s < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_area_level2s do |t|
      t.string :name
      t.string :short_name
      t.references :admin_area_level1, foreign_key: true

      t.timestamps
    end
  end
end
