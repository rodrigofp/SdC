require 'test_helper'

class TipoContatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_contato = tipo_contatos(:one)
  end

  test "should get index" do
    get tipo_contatos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_contato_url
    assert_response :success
  end

  test "should create tipo_contato" do
    assert_difference('TipoContato.count') do
      post tipo_contatos_url, params: { tipo_contato: { tipo: @tipo_contato.tipo } }
    end

    assert_redirected_to tipo_contato_url(TipoContato.last)
  end

  test "should show tipo_contato" do
    get tipo_contato_url(@tipo_contato)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_contato_url(@tipo_contato)
    assert_response :success
  end

  test "should update tipo_contato" do
    patch tipo_contato_url(@tipo_contato), params: { tipo_contato: { tipo: @tipo_contato.tipo } }
    assert_redirected_to tipo_contato_url(@tipo_contato)
  end

  test "should destroy tipo_contato" do
    assert_difference('TipoContato.count', -1) do
      delete tipo_contato_url(@tipo_contato)
    end

    assert_redirected_to tipo_contatos_url
  end
end
