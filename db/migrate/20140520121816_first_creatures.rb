class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name
      t.integer :race_id

      t.timestamps
    end
    add_index :creatures, :race_id
  end
end
