require 'test_helper'

class StimsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get submit_path
    assert_response :success
  end

end
