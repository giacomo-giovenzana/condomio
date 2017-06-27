class CreateBuildingAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :building_admins do |t|
      t.references :user, foreign_key: true
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
