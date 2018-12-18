require "application_system_test_case"

class StatusExternosTest < ApplicationSystemTestCase
  setup do
    @status_externo = status_externos(:one)
  end

  test "visiting the index" do
    visit status_externos_url
    assert_selector "h1", text: "Status Externos"
  end

  test "creating a Status externo" do
    visit status_externos_url
    click_on "New Status Externo"

    fill_in "Nome", with: @status_externo.nome
    click_on "Create Status externo"

    assert_text "Status externo was successfully created"
    click_on "Back"
  end

  test "updating a Status externo" do
    visit status_externos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @status_externo.nome
    click_on "Update Status externo"

    assert_text "Status externo was successfully updated"
    click_on "Back"
  end

  test "destroying a Status externo" do
    visit status_externos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status externo was successfully destroyed"
  end
end
