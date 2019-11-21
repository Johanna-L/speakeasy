require 'time'

class PagesController < ApplicationController
  def home
    @obama_user = User.find_by(last_name: 'Obama')
    @obama_offer_id = SpeakerOffering.find_by(user: @obama_user)

    @watson_user = User.find_by(last_name: 'Watson')
    @watson_offer_id = SpeakerOffering.find_by(user: @watson_user)

    @sebastien_user = User.find_by(last_name: 'Sébastien')
    @sebastien_offer_id = SpeakerOffering.find_by(user: @sebastien_user)

    @benattia_user = User.find_by(last_name: 'Benattia')
    @benattia_offer_id = SpeakerOffering.find_by(user: @benattia_user)
  end

  def dashboard
    @user = current_user
    @past_bookings = @user.bookings.past_bookings
    @upcoming_bookings = @user.bookings.upcoming_bookings
    @past_speaker_bookings = @user.offer_bookings.past_bookings
    @upcoming_speaker_bookings = @user.offer_bookings.upcoming_bookings
  end
end
