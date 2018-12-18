require 'test_helper'

class StatusInternosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_interno = status_internos(:one)
  end

  test "should get index" do
    get status_internos_url
    assert_response :success
  end

  test "should get new" do
    get new_status_interno_url
    assert_response :success
  end

  test "should create status_interno" do
    assert_difference('StatusInterno.count') do
      post status_internos_url, params: { status_interno: { nome: @status_interno.nome } }
    end

    assert_redirected_to status_interno_url(StatusInterno.last)
  end

  test "should show status_interno" do
    get status_interno_url(@status_interno)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_interno_url(@status_interno)
    assert_response :success
  end

  test "should update status_interno" do
    patch status_interno_url(@status_interno), params: { status_interno: { nome: @status_interno.nome } }
    assert_redirected_to status_interno_url(@status_interno)
  end

  test "should destroy status_interno" do
    assert_difference('StatusInterno.count', -1) do
      delete status_interno_url(@status_interno)
    end

    assert_redirected_to status_internos_url
  end
end
