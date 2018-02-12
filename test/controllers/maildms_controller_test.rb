require 'test_helper'

class MaildmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get maildms_index_url
    assert_response :success
  end

end
