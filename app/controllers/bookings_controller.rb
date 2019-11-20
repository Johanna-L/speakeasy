class BookingsController < ApplicationController

  def new
    @speaker_offering = SpeakerOffering.find(params[:speaker_offering_id])
    @booking = Booking.new
  end

  def create
    @speaker_offering = SpeakerOffering.find(params[:speaker_offering_id])
    @booking = Booking.new(booking_params)
    @booking.speaker_offering = @speaker_offering
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to speaker_offering_path(@speaker_offering)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_type, :date, :location)
  end
end
