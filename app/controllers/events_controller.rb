class EventsController < ApplicationController
  def new
    @conference = Conference.find(params[:conference_id])
    @event = Event.new
  end

  def create
    @conference = Conference.find(params[:conference_id])
    
    event_params = params.require(:event).permit(:title, :desc, :speaker, :location) #:starts_at, :duration
    @event = @conference.events.new(event_params)

    if @event.save
      redirect_to @conference
    else
      # handle errors
    end
  end

  def edit
  end

  def delete
  end

  def update
  end
end
