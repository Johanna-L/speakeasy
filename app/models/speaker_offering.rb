class SpeakerOffering < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :topic, presence: true
  validates :description, presence: true
end
