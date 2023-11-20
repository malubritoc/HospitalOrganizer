require "application_system_test_case"

class MaterialCirurgicosTest < ApplicationSystemTestCase
  setup do
    @material_cirurgico = material_cirurgicos(:one)
  end

  test "visiting the index" do
    visit material_cirurgicos_url
    assert_selector "h1", text: "Material cirurgicos"
  end

  test "should create material cirurgico" do
    visit material_cirurgicos_url
    click_on "New material cirurgico"

    fill_in "Nome", with: @material_cirurgico.nome
    fill_in "Tipo", with: @material_cirurgico.tipo
    click_on "Create Material cirurgico"

    assert_text "Material cirurgico was successfully created"
    click_on "Back"
  end

  test "should update Material cirurgico" do
    visit material_cirurgico_url(@material_cirurgico)
    click_on "Edit this material cirurgico", match: :first

    fill_in "Nome", with: @material_cirurgico.nome
    fill_in "Tipo", with: @material_cirurgico.tipo
    click_on "Update Material cirurgico"

    assert_text "Material cirurgico was successfully updated"
    click_on "Back"
  end

  test "should destroy Material cirurgico" do
    visit material_cirurgico_url(@material_cirurgico)
    click_on "Destroy this material cirurgico", match: :first

    assert_text "Material cirurgico was successfully destroyed"
  end
end
