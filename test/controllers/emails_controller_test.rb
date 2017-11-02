require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get emails_root_url
    assert_response :success
  end

end
