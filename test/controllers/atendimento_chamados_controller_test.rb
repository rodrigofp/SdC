require 'test_helper'

class AtendimentoChamadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atendimento_chamado = atendimento_chamados(:one)
  end

  test "should get index" do
    get atendimento_chamados_url
    assert_response :success
  end

  test "should get new" do
    get new_atendimento_chamado_url
    assert_response :success
  end

  test "should create atendimento_chamado" do
    assert_difference('AtendimentoChamado.count') do
      post atendimento_chamados_url, params: { atendimento_chamado: { base_id: @atendimento_chamado.base_id, chamado_id: @atendimento_chamado.chamado_id, data: @atendimento_chamado.data, descricao: @atendimento_chamado.descricao, status_externo_id: @atendimento_chamado.status_externo_id, status_interno_id: @atendimento_chamado.status_interno_id, usuario_id: @atendimento_chamado.usuario_id } }
    end

    assert_redirected_to atendimento_chamado_url(AtendimentoChamado.last)
  end

  test "should show atendimento_chamado" do
    get atendimento_chamado_url(@atendimento_chamado)
    assert_response :success
  end

  test "should get edit" do
    get edit_atendimento_chamado_url(@atendimento_chamado)
    assert_response :success
  end

  test "should update atendimento_chamado" do
    patch atendimento_chamado_url(@atendimento_chamado), params: { atendimento_chamado: { base_id: @atendimento_chamado.base_id, chamado_id: @atendimento_chamado.chamado_id, data: @atendimento_chamado.data, descricao: @atendimento_chamado.descricao, status_externo_id: @atendimento_chamado.status_externo_id, status_interno_id: @atendimento_chamado.status_interno_id, usuario_id: @atendimento_chamado.usuario_id } }
    assert_redirected_to atendimento_chamado_url(@atendimento_chamado)
  end

  test "should destroy atendimento_chamado" do
    assert_difference('AtendimentoChamado.count', -1) do
      delete atendimento_chamado_url(@atendimento_chamado)
    end

    assert_redirected_to atendimento_chamados_url
  end
end
