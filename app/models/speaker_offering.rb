class SpeakerOffering < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:topic, :localisation, :description],
    associated_against: {
      user: [:first_name, :last_name]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  validates :topic, presence: true
  validates :description, presence: true
end

