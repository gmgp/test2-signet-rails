# config/initializers/signet-rails.rb

Signet::Rails::Builder.set_default_options client_id: ENV['GOO_ID'],
  client_secret: ENV['GOO_SECRET']

Rails.application.config.middleware.use Signet::Rails::Builder do
  provider name: :google,
    type: :login,
    scope: [
    'https://www.googleapis.com/auth/userinfo.email',
    'https://www.googleapis.com/auth/userinfo.profile',
    'https://www.googleapis.com/auth/calendar.readonly'
  ]
end