class CreateSpeakerOfferings < ActiveRecord::Migration[5.2]
  def change
    create_table :speaker_offerings do |t|
      t.string :topic
      t.string :budget
      t.string :localisation
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
