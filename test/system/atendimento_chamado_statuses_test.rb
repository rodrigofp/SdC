require "application_system_test_case"

class AtendimentoChamadoStatusesTest < ApplicationSystemTestCase
  setup do
    @atendimento_chamado_status = atendimento_chamado_statuses(:one)
  end

  test "visiting the index" do
    visit atendimento_chamado_statuses_url
    assert_selector "h1", text: "Atendimento Chamado Statuses"
  end

  test "creating a Atendimento chamado status" do
    visit atendimento_chamado_statuses_url
    click_on "New Atendimento Chamado Status"

    fill_in "Data", with: @atendimento_chamado_status.data
    fill_in "Descricao", with: @atendimento_chamado_status.descricao
    fill_in "Status externo", with: @atendimento_chamado_status.status_externo_id
    fill_in "Status interno", with: @atendimento_chamado_status.status_interno_id
    fill_in "Usuario", with: @atendimento_chamado_status.usuario_id
    click_on "Create Atendimento chamado status"

    assert_text "Atendimento chamado status was successfully created"
    click_on "Back"
  end

  test "updating a Atendimento chamado status" do
    visit atendimento_chamado_statuses_url
    click_on "Edit", match: :first

    fill_in "Data", with: @atendimento_chamado_status.data
    fill_in "Descricao", with: @atendimento_chamado_status.descricao
    fill_in "Status externo", with: @atendimento_chamado_status.status_externo_id
    fill_in "Status interno", with: @atendimento_chamado_status.status_interno_id
    fill_in "Usuario", with: @atendimento_chamado_status.usuario_id
    click_on "Update Atendimento chamado status"

    assert_text "Atendimento chamado status was successfully updated"
    click_on "Back"
  end

  test "destroying a Atendimento chamado status" do
    visit atendimento_chamado_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atendimento chamado status was successfully destroyed"
  end
end
