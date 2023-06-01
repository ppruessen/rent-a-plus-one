class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @categories = Event::CATEGORIES
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save
    redirect_to dashboard_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:title, :category, :location, :description, :compensation, :date, :photo)
  end
end
