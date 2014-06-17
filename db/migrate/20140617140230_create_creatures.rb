class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.text :content
      t.string :movement
      t.string :weapon_skill
      t.string :ballistic_skill
      t.string :strength
      t.string :toughness
      t.string :wounds
      t.string :initiative
      t.string :attacks
      t.string :leadership
      t.integer :race_id

      t.timestamps
    end
    add_index :creatures, :race_id
  end
end
