ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  setup do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
      uid: reporters(:Wenwen).uid,
      info: {
        name: reporters(:Wenwen).name,
        nickname: reporters(:Wenwen).nickname,
        email: reporters(:Wenwen).email
      }
    })
  end

  # Add more helper methods to be used by all tests here...
  def login_with(provider)
    post "/auth/#{provider}/callback", params: OmniAuth.config.mock_auth[provider.to_sym]
  end
  
end
