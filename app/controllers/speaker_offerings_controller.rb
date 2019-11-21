class SpeakerOfferingsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        speaker_offerings.topics ILIKE :query \
        OR speaker_offerings.localisation ILIKE :query \
        OR users.first_name ILIKE :query \
        OR users.last_name ILIKE :query \
        OR users.background ILIKE :query \
        OR users.social_media ILIKE :query \
      "
      @offerings = SpeakerOffering.where(@offerings = SpeakerOffering.joins(:user).where(sql_query, query: "%#{params[:query]}%"))
    else
      @offerings = SpeakerOffering.all@movies = Movie.all
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
    params.require(:speaker_offering).permit(:title, :topic, :localisation, :budget)
  end
end
