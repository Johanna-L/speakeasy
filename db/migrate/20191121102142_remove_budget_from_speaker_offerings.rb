class RemoveBudgetFromSpeakerOfferings < ActiveRecord::Migration[5.2]
  def change
    remove_column :speaker_offerings, :budget, :strinrg
  end
end
