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
    @offering.user = current_user
    if @offering.save
      redirect_to speaker_offering_path(@offering)
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
      redirect_to speaker_offering_path(@offering)
    else
      render :edit
    end
  end

  private

  def offering_params
    params.require(:speaker_offering).permit(:topic, :localisation, :budget, :description)
  end
end
