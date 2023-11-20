require "application_system_test_case"

class SalaCirurgiasTest < ApplicationSystemTestCase
  setup do
    @sala_cirurgia = sala_cirurgias(:one)
  end

  test "visiting the index" do
    visit sala_cirurgias_url
    assert_selector "h1", text: "Sala cirurgias"
  end

  test "should create sala cirurgia" do
    visit sala_cirurgias_url
    click_on "New sala cirurgia"

    fill_in "Especialidade", with: @sala_cirurgia.especialidade
    fill_in "Nome", with: @sala_cirurgia.nome
    click_on "Create Sala cirurgia"

    assert_text "Sala cirurgia was successfully created"
    click_on "Back"
  end

  test "should update Sala cirurgia" do
    visit sala_cirurgia_url(@sala_cirurgia)
    click_on "Edit this sala cirurgia", match: :first

    fill_in "Especialidade", with: @sala_cirurgia.especialidade
    fill_in "Nome", with: @sala_cirurgia.nome
    click_on "Update Sala cirurgia"

    assert_text "Sala cirurgia was successfully updated"
    click_on "Back"
  end

  test "should destroy Sala cirurgia" do
    visit sala_cirurgia_url(@sala_cirurgia)
    click_on "Destroy this sala cirurgia", match: :first

    assert_text "Sala cirurgia was successfully destroyed"
  end
end
