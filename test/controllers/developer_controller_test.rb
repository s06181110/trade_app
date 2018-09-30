require 'test_helper'

class DeveloperControllerTest < ActionDispatch::IntegrationTest
  test "should get addition" do
    get developer_addition_url
    assert_response :success
  end

end
