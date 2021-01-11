require "test_helper"

class RopasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ropa = ropas(:one)
  end

  test "should get index" do
    get ropas_url
    assert_response :success
  end

  test "should get new" do
    get new_ropa_url
    assert_response :success
  end

  test "should create ropa" do
    assert_difference('Ropa.count') do
      post ropas_url, params: { ropa: { descripcion: @ropa.descripcion, nombre: @ropa.nombre, precio: @ropa.precio } }
    end

    assert_redirected_to ropa_url(Ropa.last)
  end

  test "should show ropa" do
    get ropa_url(@ropa)
    assert_response :success
  end

  test "should get edit" do
    get edit_ropa_url(@ropa)
    assert_response :success
  end

  test "should update ropa" do
    patch ropa_url(@ropa), params: { ropa: { descripcion: @ropa.descripcion, nombre: @ropa.nombre, precio: @ropa.precio } }
    assert_redirected_to ropa_url(@ropa)
  end

  test "should destroy ropa" do
    assert_difference('Ropa.count', -1) do
      delete ropa_url(@ropa)
    end

    assert_redirected_to ropas_url
  end
end
