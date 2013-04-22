
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '164069230424884', 'cf309e88200db171c85b9577a85ab660'
end