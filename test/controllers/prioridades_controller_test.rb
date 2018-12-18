require 'test_helper'

class PrioridadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prioridade = prioridades(:one)
  end

  test "should get index" do
    get prioridades_url
    assert_response :success
  end

  test "should get new" do
    get new_prioridade_url
    assert_response :success
  end

  test "should create prioridade" do
    assert_difference('Prioridade.count') do
      post prioridades_url, params: { prioridade: { nome: @prioridade.nome } }
    end

    assert_redirected_to prioridade_url(Prioridade.last)
  end

  test "should show prioridade" do
    get prioridade_url(@prioridade)
    assert_response :success
  end

  test "should get edit" do
    get edit_prioridade_url(@prioridade)
    assert_response :success
  end

  test "should update prioridade" do
    patch prioridade_url(@prioridade), params: { prioridade: { nome: @prioridade.nome } }
    assert_redirected_to prioridade_url(@prioridade)
  end

  test "should destroy prioridade" do
    assert_difference('Prioridade.count', -1) do
      delete prioridade_url(@prioridade)
    end

    assert_redirected_to prioridades_url
  end
end
