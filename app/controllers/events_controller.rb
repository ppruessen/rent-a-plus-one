class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    @bookings_as_customer = @event.bookings.filter { |booking| booking.user == current_user }
    @bookings_as_owner = @event.bookings.filter { |booking| booking.event.user == current_user }
  end

  def index
    @events = Event.all
  end

  private

  def finalized?(booking)
    booking.status != 'pending'
  end
  helper_method :finalized?
end
