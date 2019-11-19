class AddTitleToSpeakerOfferings < ActiveRecord::Migration[5.2]
  def change
    add_column :speaker_offerings, :title, :string
  end
end
