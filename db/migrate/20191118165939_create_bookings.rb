class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :review
      t.integer :rating
      t.string :date
      t.string :location
      t.string :event_type
      t.references :user, foreign_key: true
      t.references :speaker_offering, foreign_key: true

      t.timestamps
    end
  end
end
