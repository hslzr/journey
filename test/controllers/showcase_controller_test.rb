require "test_helper"

class ShowcaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showcase_index_url
    assert_response :success
  end
end
