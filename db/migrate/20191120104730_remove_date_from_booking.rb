class RemoveDateFromBooking < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :date, :string
  end
end
