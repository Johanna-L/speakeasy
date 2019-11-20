class SpeakerOffering < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
