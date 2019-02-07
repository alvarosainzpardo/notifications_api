class AddDataFieldsToNotifications < ActiveRecord::Migration[5.1]
  def change
    change_table :notifications do |t|
      t.string :attribute_01
      t.string :attribute_02
      t.string :attribute_03
      t.string :attribute_04
      t.string :attribute_05
      t.string :attribute_06
      t.string :attribute_07
      t.string :attribute_08
      t.string :attribute_09
      t.string :attribute_10
      t.string :attribute_11
      t.string :attribute_12
      t.string :attribute_13
      t.string :attribute_14
      t.string :attribute_15
      t.string :attribute_16
      t.string :attribute_17
      t.string :attribute_18
      t.string :attribute_19
      t.string :attribute_20
    end
  end
end
