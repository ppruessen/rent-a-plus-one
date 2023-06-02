class BookingsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = @event
    @booking.status = 'pending'
    @booking.save
    redirect_to dashboard_path
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      if params[:commit] == 'Confirm' || params[:commit] == 'Decline'
        if @booking.status == 'confirmed'
          bookings = Booking.where(event_id: @booking.event_id, status: 'pending')
          bookings.each do |booking|
            booking.status = 'declined'
            booking.save
          end
        end
        redirect_to dashboard_path, notice: "New status assigned"
      elsif
        redirect_to event_path(@booking.event), notice: "Did not work"
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
