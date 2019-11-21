class SpeakerOffering < ApplicationRecord
  validates :topic, presence: true
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
