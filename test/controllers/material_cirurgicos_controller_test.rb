require "test_helper"

class MaterialCirurgicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @material_cirurgico = material_cirurgicos(:one)
  end

  test "should get index" do
    get material_cirurgicos_url
    assert_response :success
  end

  test "should get new" do
    get new_material_cirurgico_url
    assert_response :success
  end

  test "should create material_cirurgico" do
    assert_difference("MaterialCirurgico.count") do
      post material_cirurgicos_url, params: { material_cirurgico: { nome: @material_cirurgico.nome, tipo: @material_cirurgico.tipo } }
    end

    assert_redirected_to material_cirurgico_url(MaterialCirurgico.last)
  end

  test "should show material_cirurgico" do
    get material_cirurgico_url(@material_cirurgico)
    assert_response :success
  end

  test "should get edit" do
    get edit_material_cirurgico_url(@material_cirurgico)
    assert_response :success
  end

  test "should update material_cirurgico" do
    patch material_cirurgico_url(@material_cirurgico), params: { material_cirurgico: { nome: @material_cirurgico.nome, tipo: @material_cirurgico.tipo } }
    assert_redirected_to material_cirurgico_url(@material_cirurgico)
  end

  test "should destroy material_cirurgico" do
    assert_difference("MaterialCirurgico.count", -1) do
      delete material_cirurgico_url(@material_cirurgico)
    end

    assert_redirected_to material_cirurgicos_url
  end
end
