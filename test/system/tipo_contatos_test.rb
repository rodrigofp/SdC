require "application_system_test_case"

class TipoContatosTest < ApplicationSystemTestCase
  setup do
    @tipo_contato = tipo_contatos(:one)
  end

  test "visiting the index" do
    visit tipo_contatos_url
    assert_selector "h1", text: "Tipo Contatos"
  end

  test "creating a Tipo contato" do
    visit tipo_contatos_url
    click_on "New Tipo Contato"

    fill_in "Tipo", with: @tipo_contato.tipo
    click_on "Create Tipo contato"

    assert_text "Tipo contato was successfully created"
    click_on "Back"
  end

  test "updating a Tipo contato" do
    visit tipo_contatos_url
    click_on "Edit", match: :first

    fill_in "Tipo", with: @tipo_contato.tipo
    click_on "Update Tipo contato"

    assert_text "Tipo contato was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo contato" do
    visit tipo_contatos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo contato was successfully destroyed"
  end
end
