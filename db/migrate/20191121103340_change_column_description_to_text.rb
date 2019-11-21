class ChangeColumnDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    change_column :speaker_offerings, :description, :text
  end
end
