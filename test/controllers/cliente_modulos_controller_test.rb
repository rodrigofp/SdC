require 'test_helper'

class ClienteModulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente_modulo = cliente_modulos(:one)
  end

  test "should get index" do
    get cliente_modulos_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_modulo_url
    assert_response :success
  end

  test "should create cliente_modulo" do
    assert_difference('ClienteModulo.count') do
      post cliente_modulos_url, params: { cliente_modulo: { cliente_id: @cliente_modulo.cliente_id, modulo_id: @cliente_modulo.modulo_id } }
    end

    assert_redirected_to cliente_modulo_url(ClienteModulo.last)
  end

  test "should show cliente_modulo" do
    get cliente_modulo_url(@cliente_modulo)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_modulo_url(@cliente_modulo)
    assert_response :success
  end

  test "should update cliente_modulo" do
    patch cliente_modulo_url(@cliente_modulo), params: { cliente_modulo: { cliente_id: @cliente_modulo.cliente_id, modulo_id: @cliente_modulo.modulo_id } }
    assert_redirected_to cliente_modulo_url(@cliente_modulo)
  end

  test "should destroy cliente_modulo" do
    assert_difference('ClienteModulo.count', -1) do
      delete cliente_modulo_url(@cliente_modulo)
    end

    assert_redirected_to cliente_modulos_url
  end
end
