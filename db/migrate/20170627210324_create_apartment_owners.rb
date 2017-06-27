class CreateApartmentOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :apartment_owners do |t|
      t.references :user, foreign_key: true
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
