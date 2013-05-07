Omniauth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, ENV['497166503672666'], ENV['d98ac50e0773cbe507bc0f0597b20449']
end