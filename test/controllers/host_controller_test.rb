require 'test_helper'

class HostControllerTest < ActionDispatch::IntegrationTest
  test "should get boats" do
    get host_boats_url
    assert_response :success
  end

end
