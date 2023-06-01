class ChangeAcceptedToStatusInBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :accepted
    add_column :bookings, :status, :string
  end
end
