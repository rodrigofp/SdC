require 'test_helper'

class StatusExternosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_externo = status_externos(:one)
  end

  test "should get index" do
    get status_externos_url
    assert_response :success
  end

  test "should get new" do
    get new_status_externo_url
    assert_response :success
  end

  test "should create status_externo" do
    assert_difference('StatusExterno.count') do
      post status_externos_url, params: { status_externo: { nome: @status_externo.nome } }
    end

    assert_redirected_to status_externo_url(StatusExterno.last)
  end

  test "should show status_externo" do
    get status_externo_url(@status_externo)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_externo_url(@status_externo)
    assert_response :success
  end

  test "should update status_externo" do
    patch status_externo_url(@status_externo), params: { status_externo: { nome: @status_externo.nome } }
    assert_redirected_to status_externo_url(@status_externo)
  end

  test "should destroy status_externo" do
    assert_difference('StatusExterno.count', -1) do
      delete status_externo_url(@status_externo)
    end

    assert_redirected_to status_externos_url
  end
end
