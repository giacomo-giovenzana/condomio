class CreateLocalities < ActiveRecord::Migration[5.1]
  def change
    create_table :localities do |t|
      t.string :name
      t.string :short_name
      t.references :admin_area_level2, foreign_key: true

      t.timestamps
    end
  end
end
