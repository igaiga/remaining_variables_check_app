require "test_helper"

class FooControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foo_index_url
    assert_response :success
  end
end
