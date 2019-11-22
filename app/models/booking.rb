class Booking < ApplicationRecord
  validates :date, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }
  belongs_to :user
  belongs_to :speaker_offering

  scope :past_bookings, -> { where("date < ?", Date.today) }
  scope :upcoming_bookings, -> { where("date >= ?", Date.today) }

  before_validation :default_values

  private

  def default_values
    self.rating = 0
  end
end
