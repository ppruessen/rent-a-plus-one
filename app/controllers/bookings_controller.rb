class BookingsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.event = @event
    @booking.status = 'pending'
    @booking.save
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      if params[:commit] == 'Confirm' || params[:commit] == 'Decline'
        redirect_to dashboard_path, notice: "Worked"
      elsif
        redirect_to event_path(@booking.event), notice: "Did not worked"
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
