class RenameRaceToCrew < ActiveRecord::Migration
  def change
    rename_table :races, :crews
    rename_column :creatures, :race_id, :crew_id
  end
end
