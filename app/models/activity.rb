class Activity < ApplicationRecord
  enum activity_type: {
    Ride: 'Ride',
    Run: 'Run',
    Swim: 'Swim',
    Ski: 'Ski'
  }
  validates :name, :activity_type, presence: true

end
