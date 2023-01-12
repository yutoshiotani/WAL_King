require "test_helper"

class Public::StepsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_steps_index_url
    assert_response :success
  end
end
