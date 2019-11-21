class AddColumnBudgetToSpeakerOfferings < ActiveRecord::Migration[5.2]
  def change
    add_column :speaker_offerings, :budget, :integer
  end
end
