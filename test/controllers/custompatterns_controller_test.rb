require 'test_helper'

class CustompatternsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get custompatterns_new_url
    assert_response :success
  end

end
