class SessionsController < ApplicationController

  def new
    redirect_to strava_url, allow_other_host: true
  end

  def create
    @response = client.oauth_token(code: params[:code])
  end

  private

  def client
    Strava::OAuth::Client.new(
      client_id: '90376',
      client_secret: '9a31b9066c2942feb97a9a3afb7e7f4d9f1da453'
    )
  end

  def strava_url
    client.authorize_url(
      redirect_uri: 'localhost:3000',
      approval_prompt: 'force',
      response_type: 'code',
      scope: 'profile:read_all,activity:read_all',
    )
  end
  
end
