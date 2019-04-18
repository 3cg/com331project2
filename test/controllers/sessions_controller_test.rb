require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
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

  test "should get create" do
    get sessions_create_url
    assert_response :success
  end

end
