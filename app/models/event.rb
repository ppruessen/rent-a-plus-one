class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings
  #test comment
end
