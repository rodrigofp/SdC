require 'test_helper'

class ChamadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chamado = chamados(:one)
  end

  test "should get index" do
    get chamados_url
    assert_response :success
  end

  test "should get new" do
    get new_chamado_url
    assert_response :success
  end

  test "should create chamado" do
    assert_difference('Chamado.count') do
      post chamados_url, params: { chamado: { data_abertura: @chamado.data_abertura, data_fechamento: @chamado.data_fechamento, modulo_id: @chamado.modulo_id, prioridade_id: @chamado.prioridade_id, tipo_chamado_id: @chamado.tipo_chamado_id, usuario_id: @chamado.usuario_id } }
    end

    assert_redirected_to chamado_url(Chamado.last)
  end

  test "should show chamado" do
    get chamado_url(@chamado)
    assert_response :success
  end

  test "should get edit" do
    get edit_chamado_url(@chamado)
    assert_response :success
  end

  test "should update chamado" do
    patch chamado_url(@chamado), params: { chamado: { data_abertura: @chamado.data_abertura, data_fechamento: @chamado.data_fechamento, modulo_id: @chamado.modulo_id, prioridade_id: @chamado.prioridade_id, tipo_chamado_id: @chamado.tipo_chamado_id, usuario_id: @chamado.usuario_id } }
    assert_redirected_to chamado_url(@chamado)
  end

  test "should destroy chamado" do
    assert_difference('Chamado.count', -1) do
      delete chamado_url(@chamado)
    end

    assert_redirected_to chamados_url
  end
end
