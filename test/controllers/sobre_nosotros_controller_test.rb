require "test_helper"

class SobreNosotrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sobre_nosotros_index_url
    assert_response :success
  end
end
