require 'time'

class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @past_bookings = @user.bookings.past_bookings
    @upcoming_bookings = @user.bookings.upcoming_bookings
    @past_speaker_bookings = @user.offer_bookings.past_bookings
    @upcoming_speaker_bookings = @user.offer_bookings.upcoming_bookings
  end
end
