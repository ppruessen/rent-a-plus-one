class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i(home index show)
  def home
    @events = Event.all.sample(4)
  end

  def dashboard
    # Pending events
    @all_events_by_user = current_user.events
    # sql_query = <<~SQL
    #   bookings.user_id = :user_id AND bookings.accepted = false
    # SQL
    # current_user.events = user_events.joins(:bookings).where(sql_query)
    #@my_pending_events = user_events.
    @my_pending_events = Booking.where(event_id: @all_events_by_user.pluck(:id), status: 'pending')

    # Approved events
    @my_approved_events = Booking.where(event_id: @all_events_by_user.pluck(:id), status: 'confirmed')
    # Events I applied
    sql_query = <<~SQL
      bookings.user_id = :user_id AND bookings.status = 'pending'
    SQL
    @applied_events = Event.joins(:bookings).where(sql_query, user_id: current_user.id)
    # Events I got approved
    sql_query = <<~SQL
      bookings.user_id = :user_id AND bookings.status = 'confirmed'
    SQL
    @approved_events = Event.joins(:bookings).where(sql_query, user_id: current_user.id)
  end
end
