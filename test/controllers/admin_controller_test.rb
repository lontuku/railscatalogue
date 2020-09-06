require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get storeAdmin" do
    get admin_storeAdmin_url
    assert_response :success
  end

end
