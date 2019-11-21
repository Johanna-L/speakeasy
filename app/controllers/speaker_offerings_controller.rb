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
  end

  def create
    @offering = SpeakerOffering.new(offering_params)
    @offering.user = current_user
    if @offering.save
      redirect_to speaker_offering_path(@offering)
    else
      render :new
    end
  end

  private

  def offering_params
    params.require(:speaker_offering).permit(:topic, :localisation, :budget, :description)
  end
end
