require "application_system_test_case"

class CirurgiasTest < ApplicationSystemTestCase
  setup do
    @cirurgia = cirurgias(:one)
  end

  test "visiting the index" do
    visit cirurgias_url
    assert_selector "h1", text: "Cirurgias"
  end

  test "should create cirurgia" do
    visit cirurgias_url
    click_on "New cirurgia"

    fill_in "Data", with: @cirurgia.data
    fill_in "Hora fim", with: @cirurgia.hora_fim
    fill_in "Hora inicio", with: @cirurgia.hora_inicio
    fill_in "Medico", with: @cirurgia.medico_id
    fill_in "Paciente", with: @cirurgia.paciente_id
    fill_in "Sala cirurgia", with: @cirurgia.sala_cirurgia_id
    check "Urgencia" if @cirurgia.urgencia
    click_on "Create Cirurgia"

    assert_text "Cirurgia was successfully created"
    click_on "Back"
  end

  test "should update Cirurgia" do
    visit cirurgia_url(@cirurgia)
    click_on "Edit this cirurgia", match: :first

    fill_in "Data", with: @cirurgia.data
    fill_in "Hora fim", with: @cirurgia.hora_fim
    fill_in "Hora inicio", with: @cirurgia.hora_inicio
    fill_in "Medico", with: @cirurgia.medico_id
    fill_in "Paciente", with: @cirurgia.paciente_id
    fill_in "Sala cirurgia", with: @cirurgia.sala_cirurgia_id
    check "Urgencia" if @cirurgia.urgencia
    click_on "Update Cirurgia"

    assert_text "Cirurgia was successfully updated"
    click_on "Back"
  end

  test "should destroy Cirurgia" do
    visit cirurgia_url(@cirurgia)
    click_on "Destroy this cirurgia", match: :first

    assert_text "Cirurgia was successfully destroyed"
  end
end
