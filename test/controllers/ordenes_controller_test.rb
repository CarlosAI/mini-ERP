require 'test_helper'

class OrdenesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ordenes_index_url
    assert_response :success
  end

end
