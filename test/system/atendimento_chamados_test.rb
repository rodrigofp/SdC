require "application_system_test_case"

class AtendimentoChamadosTest < ApplicationSystemTestCase
  setup do
    @atendimento_chamado = atendimento_chamados(:one)
  end

  test "visiting the index" do
    visit atendimento_chamados_url
    assert_selector "h1", text: "Atendimento Chamados"
  end

  test "creating a Atendimento chamado" do
    visit atendimento_chamados_url
    click_on "New Atendimento Chamado"

    fill_in "Base", with: @atendimento_chamado.base_id
    fill_in "Chamado", with: @atendimento_chamado.chamado_id
    fill_in "Data", with: @atendimento_chamado.data
    fill_in "Descricao", with: @atendimento_chamado.descricao
    fill_in "Status externo", with: @atendimento_chamado.status_externo_id
    fill_in "Status interno", with: @atendimento_chamado.status_interno_id
    fill_in "Usuario", with: @atendimento_chamado.usuario_id
    click_on "Create Atendimento chamado"

    assert_text "Atendimento chamado was successfully created"
    click_on "Back"
  end

  test "updating a Atendimento chamado" do
    visit atendimento_chamados_url
    click_on "Edit", match: :first

    fill_in "Base", with: @atendimento_chamado.base_id
    fill_in "Chamado", with: @atendimento_chamado.chamado_id
    fill_in "Data", with: @atendimento_chamado.data
    fill_in "Descricao", with: @atendimento_chamado.descricao
    fill_in "Status externo", with: @atendimento_chamado.status_externo_id
    fill_in "Status interno", with: @atendimento_chamado.status_interno_id
    fill_in "Usuario", with: @atendimento_chamado.usuario_id
    click_on "Update Atendimento chamado"

    assert_text "Atendimento chamado was successfully updated"
    click_on "Back"
  end

  test "destroying a Atendimento chamado" do
    visit atendimento_chamados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atendimento chamado was successfully destroyed"
  end
end
