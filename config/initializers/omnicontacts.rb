Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, ENV['google_app_id'], ENV['google_app_secret']
end
