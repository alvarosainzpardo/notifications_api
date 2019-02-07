class AddAttribute00ToMigrations < ActiveRecord::Migration[5.1]
  def change
    change_table :notifications do |t|
      t.string :attribute_00
      remove_column :notifications, :attribute_20
    end
  end
end
