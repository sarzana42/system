require 'test_helper'

class ContacthistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contacthistories_index_url
    assert_response :success
  end

end
