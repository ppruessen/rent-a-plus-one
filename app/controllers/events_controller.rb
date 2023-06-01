class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def index
    if params[:query].present?
      @events = Event.where(category: params[:query])
    else
      @events = Event.all
    end
  end
end
