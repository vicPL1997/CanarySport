require "test_helper"

class PanelAdministracionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get panel_administracion_index_url
    assert_response :success
  end
end
