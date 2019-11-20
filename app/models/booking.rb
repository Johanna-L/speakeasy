class Booking < ApplicationRecord
  validates :date, presence: true
  belongs_to :user
  belongs_to :speaker_offering

  scope :past_bookings, -> { where("date < ?", Date.today) }
  scope :upcoming_bookings, -> { where("date >= ?", Date.today) }
end
