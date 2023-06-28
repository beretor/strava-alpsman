Rails.application.config.middleware.use OmniAuth::Builder do
  provider :strava, '90376', '9a31b9066c2942feb97a9a3afb7e7f4d9f1da453'
end