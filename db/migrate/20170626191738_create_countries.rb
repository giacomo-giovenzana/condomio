class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|      
      t.string :name,          null: false, default: ""
      t.string :short_name,    null: true, default: ""

      t.timestamps
    end
  end
end
