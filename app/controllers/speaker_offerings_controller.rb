class SpeakerOfferingsController < ApplicationController
  def index
    if params[:query].present?
      @offerings = SpeakerOffering.global_search(params[:query])
    else
      @offerings = SpeakerOffering.all
    end
  end

  def new
    @offering = SpeakerOffering.new
  end

  def show
    @offering = SpeakerOffering.find(params[:id])
    @booking = Booking.new
  end

  def create
    @offering = SpeakerOffering.new(offering_params)
    @offering.user = current_user
    if @offering.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @offering = SpeakerOffering.find(params[:id])
    @offering.user = current_user
  end

  def update
    @offering = SpeakerOffering.find(params[:id])
    if @offering.update(offering_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @offering = SpeakerOffering.find(params[:id])
    @offering.destroy
    redirect_to dashboard_path
  end

  private

  def offering_params
    params.require(:speaker_offering).permit(:topic, :localisation, :budget, :description)
  end
end
