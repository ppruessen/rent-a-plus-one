class Event < ApplicationRecord
  CATEGORIES = ['Wedding', 'Funeral', 'Graduation', 'Birthday Party', 'Family Gathering', 'Work Event', 'Class Reunion', 'Space Trip']

  belongs_to :user
  has_many :bookings
  has_one_attached :photo
end
