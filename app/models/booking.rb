class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :speaker_offering
end
