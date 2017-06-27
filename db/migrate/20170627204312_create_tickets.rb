class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.references :reporter, index: true, foreign_key: { to_table: :users }
      t.references :assignee, index: true, foreign_key: { to_table: :users }
      t.references :building, foreign_key: true
      t.string :title
      t.string :description
      t.integer :severity
      t.string :state

      t.timestamps
    end
  end
end
