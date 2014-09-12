require 'test_helper'

class RegistrationControllerTest < ActionController::TestCase
  test "should get form" do
    get :form
    assert_response :success
  end

end
