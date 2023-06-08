# app/controllers/strava_controller.rb
class StravaController < ApplicationController
  def authorize
    redirect_to Strava::OAuth::AuthorizationRequest.authorization_url(
      client_id: '90376',
      redirect_uri: 'localhost:3000',
      response_type: 'code',
      scope: 'read_all,activity:read_all'
    )
  end

  def callback
    code = params[:code]
    token_response = Strava::OAuth::TokenExchange.exchange(
      client_id: '90376',
      client_secret: '9a31b9066c2942feb97a9a3afb7e7f4d9f1da453',
      code: code
    )

    # Store the access token for the user
    access_token = token_response.access_token

    # Redirect to the page displaying the user's activities
    redirect_to activities_path(access_token: access_token)
  end
end
