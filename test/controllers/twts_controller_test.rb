require 'test_helper'

class TwtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twts_index_url
    assert_response :success
  end

end
