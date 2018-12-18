require "application_system_test_case"

class TipoChamadosTest < ApplicationSystemTestCase
  setup do
    @tipo_chamado = tipo_chamados(:one)
  end

  test "visiting the index" do
    visit tipo_chamados_url
    assert_selector "h1", text: "Tipo Chamados"
  end

  test "creating a Tipo chamado" do
    visit tipo_chamados_url
    click_on "New Tipo Chamado"

    fill_in "Tipo", with: @tipo_chamado.tipo
    click_on "Create Tipo chamado"

    assert_text "Tipo chamado was successfully created"
    click_on "Back"
  end

  test "updating a Tipo chamado" do
    visit tipo_chamados_url
    click_on "Edit", match: :first

    fill_in "Tipo", with: @tipo_chamado.tipo
    click_on "Update Tipo chamado"

    assert_text "Tipo chamado was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo chamado" do
    visit tipo_chamados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo chamado was successfully destroyed"
  end
end
