require 'test_helper'

class AnexoChamadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anexo_chamado = anexo_chamados(:one)
  end

  test "should get index" do
    get anexo_chamados_url
    assert_response :success
  end

  test "should get new" do
    get new_anexo_chamado_url
    assert_response :success
  end

  test "should create anexo_chamado" do
    assert_difference('AnexoChamado.count') do
      post anexo_chamados_url, params: { anexo_chamado: { atendimento_chamado_status_id: @anexo_chamado.atendimento_chamado_status_id, nome_arquivo: @anexo_chamado.nome_arquivo } }
    end

    assert_redirected_to anexo_chamado_url(AnexoChamado.last)
  end

  test "should show anexo_chamado" do
    get anexo_chamado_url(@anexo_chamado)
    assert_response :success
  end

  test "should get edit" do
    get edit_anexo_chamado_url(@anexo_chamado)
    assert_response :success
  end

  test "should update anexo_chamado" do
    patch anexo_chamado_url(@anexo_chamado), params: { anexo_chamado: { atendimento_chamado_status_id: @anexo_chamado.atendimento_chamado_status_id, nome_arquivo: @anexo_chamado.nome_arquivo } }
    assert_redirected_to anexo_chamado_url(@anexo_chamado)
  end

  test "should destroy anexo_chamado" do
    assert_difference('AnexoChamado.count', -1) do
      delete anexo_chamado_url(@anexo_chamado)
    end

    assert_redirected_to anexo_chamados_url
  end
end
