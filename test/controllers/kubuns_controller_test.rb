require 'test_helper'

class KubunsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kubuns_index_url
    assert_response :success
  end

end
