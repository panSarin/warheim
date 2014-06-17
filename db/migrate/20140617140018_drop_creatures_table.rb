class DropCreaturesTable < ActiveRecord::Migration
  def up
    drop_table :creatures
  end
  def down
    create_table :creatures do |t|
      t.string :name
      t.integer :race_id

      t.timestamps
    end
    add_index :creatures, :race_id
  end
end
