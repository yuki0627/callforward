require 'test_helper'

class CallsControllerTest < ActionController::TestCase
  test "should get forward" do
    get :forward
    assert_response :success
  end

end
