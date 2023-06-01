class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :user
  STATUS = ['pending', 'confirmed', 'declined']
end
