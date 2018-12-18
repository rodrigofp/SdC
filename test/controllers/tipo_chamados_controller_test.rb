require 'test_helper'

class TipoChamadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_chamado = tipo_chamados(:one)
  end

  test "should get index" do
    get tipo_chamados_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_chamado_url
    assert_response :success
  end

  test "should create tipo_chamado" do
    assert_difference('TipoChamado.count') do
      post tipo_chamados_url, params: { tipo_chamado: { tipo: @tipo_chamado.tipo } }
    end

    assert_redirected_to tipo_chamado_url(TipoChamado.last)
  end

  test "should show tipo_chamado" do
    get tipo_chamado_url(@tipo_chamado)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_chamado_url(@tipo_chamado)
    assert_response :success
  end

  test "should update tipo_chamado" do
    patch tipo_chamado_url(@tipo_chamado), params: { tipo_chamado: { tipo: @tipo_chamado.tipo } }
    assert_redirected_to tipo_chamado_url(@tipo_chamado)
  end

  test "should destroy tipo_chamado" do
    assert_difference('TipoChamado.count', -1) do
      delete tipo_chamado_url(@tipo_chamado)
    end

    assert_redirected_to tipo_chamados_url
  end
end
