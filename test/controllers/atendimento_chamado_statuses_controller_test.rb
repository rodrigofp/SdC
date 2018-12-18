require 'test_helper'

class AtendimentoChamadoStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atendimento_chamado_status = atendimento_chamado_statuses(:one)
  end

  test "should get index" do
    get atendimento_chamado_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_atendimento_chamado_status_url
    assert_response :success
  end

  test "should create atendimento_chamado_status" do
    assert_difference('AtendimentoChamadoStatus.count') do
      post atendimento_chamado_statuses_url, params: { atendimento_chamado_status: { data: @atendimento_chamado_status.data, descricao: @atendimento_chamado_status.descricao, status_externo_id: @atendimento_chamado_status.status_externo_id, status_interno_id: @atendimento_chamado_status.status_interno_id, usuario_id: @atendimento_chamado_status.usuario_id } }
    end

    assert_redirected_to atendimento_chamado_status_url(AtendimentoChamadoStatus.last)
  end

  test "should show atendimento_chamado_status" do
    get atendimento_chamado_status_url(@atendimento_chamado_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_atendimento_chamado_status_url(@atendimento_chamado_status)
    assert_response :success
  end

  test "should update atendimento_chamado_status" do
    patch atendimento_chamado_status_url(@atendimento_chamado_status), params: { atendimento_chamado_status: { data: @atendimento_chamado_status.data, descricao: @atendimento_chamado_status.descricao, status_externo_id: @atendimento_chamado_status.status_externo_id, status_interno_id: @atendimento_chamado_status.status_interno_id, usuario_id: @atendimento_chamado_status.usuario_id } }
    assert_redirected_to atendimento_chamado_status_url(@atendimento_chamado_status)
  end

  test "should destroy atendimento_chamado_status" do
    assert_difference('AtendimentoChamadoStatus.count', -1) do
      delete atendimento_chamado_status_url(@atendimento_chamado_status)
    end

    assert_redirected_to atendimento_chamado_statuses_url
  end
end
