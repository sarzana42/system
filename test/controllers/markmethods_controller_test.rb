require 'test_helper'

class MarkmethodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get markmethods_index_url
    assert_response :success
  end

end
