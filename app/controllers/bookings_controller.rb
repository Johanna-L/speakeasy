class BookingsController < ApplicationController
  before_action :find_speaker_offering, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.speaker_offering = @speaker_offering
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to speaker_offering_path(@speaker_offering)
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def find_speaker_offering
    @speaker_offering = SpeakerOffering.find(params[:speaker_offering_id])
  end

  def booking_params
    params.require(:booking).permit(:event_type, :date, :location, :review, :rating)
  end
end
