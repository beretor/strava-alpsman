# app/services/strava_service.rb
class StravaService
  def initialize(access_token)
    @access_token = access_token
  end

  def get_activities
    client = Strava::Api::Client.new(access_token: @access_token)
    activities = client.list_athlete_activities

    activities.map do |activity|
      {
        name: activity.name,
        duration: activity.elapsed_time,
        mileage: activity.distance,
        type: activity.type
      }
    end
  end
end
