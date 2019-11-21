class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :bookings, dependent: :destroy
  has_many :speaker_offerings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def offer_bookings
    Booking.where(speaker_offering: speaker_offerings)
  end

end
