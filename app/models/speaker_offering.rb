class SpeakerOffering < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :topics, :localisation ],
    associated_against: {
      user: [ :first_name, :last_name, :background, :social_media ]
    },
    using: {
      tsearch: { prefix: true }
    }
end

