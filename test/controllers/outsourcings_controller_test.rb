require 'test_helper'

class OutsourcingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outsourcings_index_url
    assert_response :success
  end

end
