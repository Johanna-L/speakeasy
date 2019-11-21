class SpeakerOffering < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :description, presence: true
end
