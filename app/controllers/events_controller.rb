class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @bookings_as_customer = @event.bookings.filter { |booking| booking.user == current_user }
    @bookings_as_owner = @event.bookings.filter { |booking| booking.event.user == current_user }
  end

  def index
    if params[:query].present?
      @events = Event.where(category: params[:query])
    else
      @events = Event.all
    end
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
  
  def finalized?(booking)
    booking.status != 'pending'
  end
  helper_method :finalized?
end
