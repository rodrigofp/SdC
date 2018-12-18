require "application_system_test_case"

class StatusInternosTest < ApplicationSystemTestCase
  setup do
    @status_interno = status_internos(:one)
  end

  test "visiting the index" do
    visit status_internos_url
    assert_selector "h1", text: "Status Internos"
  end

  test "creating a Status interno" do
    visit status_internos_url
    click_on "New Status Interno"

    fill_in "Nome", with: @status_interno.nome
    click_on "Create Status interno"

    assert_text "Status interno was successfully created"
    click_on "Back"
  end

  test "updating a Status interno" do
    visit status_internos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @status_interno.nome
    click_on "Update Status interno"

    assert_text "Status interno was successfully updated"
    click_on "Back"
  end

  test "destroying a Status interno" do
    visit status_internos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Status interno was successfully destroyed"
  end
end
