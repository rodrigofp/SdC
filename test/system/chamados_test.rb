require "application_system_test_case"

class ChamadosTest < ApplicationSystemTestCase
  setup do
    @chamado = chamados(:one)
  end

  test "visiting the index" do
    visit chamados_url
    assert_selector "h1", text: "Chamados"
  end

  test "creating a Chamado" do
    visit chamados_url
    click_on "New Chamado"

    fill_in "Data abertura", with: @chamado.data_abertura
    fill_in "Data fechamento", with: @chamado.data_fechamento
    fill_in "Modulo", with: @chamado.modulo_id
    fill_in "Prioridade", with: @chamado.prioridade_id
    fill_in "Tipo chamado", with: @chamado.tipo_chamado_id
    fill_in "Usuario", with: @chamado.usuario_id
    click_on "Create Chamado"

    assert_text "Chamado was successfully created"
    click_on "Back"
  end

  test "updating a Chamado" do
    visit chamados_url
    click_on "Edit", match: :first

    fill_in "Data abertura", with: @chamado.data_abertura
    fill_in "Data fechamento", with: @chamado.data_fechamento
    fill_in "Modulo", with: @chamado.modulo_id
    fill_in "Prioridade", with: @chamado.prioridade_id
    fill_in "Tipo chamado", with: @chamado.tipo_chamado_id
    fill_in "Usuario", with: @chamado.usuario_id
    click_on "Update Chamado"

    assert_text "Chamado was successfully updated"
    click_on "Back"
  end

  test "destroying a Chamado" do
    visit chamados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chamado was successfully destroyed"
  end
end
