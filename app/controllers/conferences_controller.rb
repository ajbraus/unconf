class ConferencesController < ApplicationController
  def index
    @conferences = Conference.all
  end
  
  def new
    @conference = Conference.new
  end

  def create
    conference_params = params.require(:conference).permit(:title, :desc, :starts_at, :ends_at)
    @conference = Conference.new(conference_params)

    if @conference.save
      redirect_to :root
    else
      # handle errors
    end
  end

  def show
    @conference = Conference.find(params[:id])
  end
end

