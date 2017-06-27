class CreateDivisions < ActiveRecord::Migration[5.1]
  def change
    create_table :divisions do |t|
      t.string :name
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
