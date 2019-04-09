Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_IIT_KEY'], ENV['GITHUB_IIT_SECRET']
end
