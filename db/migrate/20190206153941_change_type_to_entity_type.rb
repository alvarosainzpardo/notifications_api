class ChangeTypeToEntityType < ActiveRecord::Migration[5.1]
  def change
    rename_column :notifications, :type, :entity_type
  end
end
