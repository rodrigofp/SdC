require "application_system_test_case"

class AnexoChamadosTest < ApplicationSystemTestCase
  setup do
    @anexo_chamado = anexo_chamados(:one)
  end

  test "visiting the index" do
    visit anexo_chamados_url
    assert_selector "h1", text: "Anexo Chamados"
  end

  test "creating a Anexo chamado" do
    visit anexo_chamados_url
    click_on "New Anexo Chamado"

    fill_in "Atendimento chamado status", with: @anexo_chamado.atendimento_chamado_status_id
    fill_in "Nome arquivo", with: @anexo_chamado.nome_arquivo
    click_on "Create Anexo chamado"

    assert_text "Anexo chamado was successfully created"
    click_on "Back"
  end

  test "updating a Anexo chamado" do
    visit anexo_chamados_url
    click_on "Edit", match: :first

    fill_in "Atendimento chamado status", with: @anexo_chamado.atendimento_chamado_status_id
    fill_in "Nome arquivo", with: @anexo_chamado.nome_arquivo
    click_on "Update Anexo chamado"

    assert_text "Anexo chamado was successfully updated"
    click_on "Back"
  end

  test "destroying a Anexo chamado" do
    visit anexo_chamados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anexo chamado was successfully destroyed"
  end
end
