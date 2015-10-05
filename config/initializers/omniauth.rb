Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['google_app_id'], ENV['google_app_secret'], {
    scope: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
      'https://www.googleapis.com/auth/userinfo#email',
      'https://www.googleapis.com/auth/userinfo.profile',
      'https://www.google.com/m8/feeds'
    ],
    access_type: 'offline'
  }
end
