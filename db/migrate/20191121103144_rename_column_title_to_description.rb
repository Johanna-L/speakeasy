class RenameColumnTitleToDescription < ActiveRecord::Migration[5.2]
  def change
    rename_column :speaker_offerings, :title, :description
  end
end
