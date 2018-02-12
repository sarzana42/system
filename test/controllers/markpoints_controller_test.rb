require 'test_helper'

class MarkpointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get markpoints_index_url
    assert_response :success
  end

end
