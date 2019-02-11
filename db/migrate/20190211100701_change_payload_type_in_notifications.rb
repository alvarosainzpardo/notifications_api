class ChangePayloadTypeInNotifications < ActiveRecord::Migration[5.1]
  def self.up
    change_column :notifications, :payload, :text
  end

  def self.down
    change_column :notifications, :payload, :string
  end
end
