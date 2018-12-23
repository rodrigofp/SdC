require "application_system_test_case"

class ClienteModulosTest < ApplicationSystemTestCase
  setup do
    @cliente_modulo = cliente_modulos(:one)
  end

  test "visiting the index" do
    visit cliente_modulos_url
    assert_selector "h1", text: "Cliente Modulos"
  end

  test "creating a Cliente modulo" do
    visit cliente_modulos_url
    click_on "New Cliente Modulo"

    fill_in "Cliente", with: @cliente_modulo.cliente_id
    fill_in "Modulo", with: @cliente_modulo.modulo_id
    click_on "Create Cliente modulo"

    assert_text "Cliente modulo was successfully created"
    click_on "Back"
  end

  test "updating a Cliente modulo" do
    visit cliente_modulos_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @cliente_modulo.cliente_id
    fill_in "Modulo", with: @cliente_modulo.modulo_id
    click_on "Update Cliente modulo"

    assert_text "Cliente modulo was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente modulo" do
    visit cliente_modulos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente modulo was successfully destroyed"
  end
end
