require 'test_helper'

class TopControllerTest < ActionController::TestCase
  test "should get top" do
    get :top
    assert_response :success
  end

end
