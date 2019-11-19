class SpeakerOfferingsController < ApplicationController
  def index
    @offerings = SpeakerOffering.all
  end

  def new
    @offering = SpeakerOffering.new
  end

  def show
    @offering = SpeakerOffering.find(params[:id])
  end

  def create
    @offering = SpeakerOffering.new(offering_params)
    @offering.save
    redirect_to speaker_offering_path(@offering)
  end

  private

  def offering_params
    params.require(:offering).permit(:topic, :localisation, :budget)
  end
end
