require "application_system_test_case"

class PrioridadesTest < ApplicationSystemTestCase
  setup do
    @prioridade = prioridades(:one)
  end

  test "visiting the index" do
    visit prioridades_url
    assert_selector "h1", text: "Prioridades"
  end

  test "creating a Prioridade" do
    visit prioridades_url
    click_on "New Prioridade"

    fill_in "Nome", with: @prioridade.nome
    click_on "Create Prioridade"

    assert_text "Prioridade was successfully created"
    click_on "Back"
  end

  test "updating a Prioridade" do
    visit prioridades_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @prioridade.nome
    click_on "Update Prioridade"

    assert_text "Prioridade was successfully updated"
    click_on "Back"
  end

  test "destroying a Prioridade" do
    visit prioridades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prioridade was successfully destroyed"
  end
end
