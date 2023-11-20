require "test_helper"

class CirurgiasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cirurgia = cirurgias(:one)
  end

  test "should get index" do
    get cirurgias_url
    assert_response :success
  end

  test "should get new" do
    get new_cirurgia_url
    assert_response :success
  end

  test "should create cirurgia" do
    assert_difference("Cirurgia.count") do
      post cirurgias_url, params: { cirurgia: { data: @cirurgia.data, hora_fim: @cirurgia.hora_fim, hora_inicio: @cirurgia.hora_inicio, medico_id: @cirurgia.medico_id, paciente_id: @cirurgia.paciente_id, sala_cirurgia_id: @cirurgia.sala_cirurgia_id, urgencia: @cirurgia.urgencia } }
    end

    assert_redirected_to cirurgia_url(Cirurgia.last)
  end

  test "should show cirurgia" do
    get cirurgia_url(@cirurgia)
    assert_response :success
  end

  test "should get edit" do
    get edit_cirurgia_url(@cirurgia)
    assert_response :success
  end

  test "should update cirurgia" do
    patch cirurgia_url(@cirurgia), params: { cirurgia: { data: @cirurgia.data, hora_fim: @cirurgia.hora_fim, hora_inicio: @cirurgia.hora_inicio, medico_id: @cirurgia.medico_id, paciente_id: @cirurgia.paciente_id, sala_cirurgia_id: @cirurgia.sala_cirurgia_id, urgencia: @cirurgia.urgencia } }
    assert_redirected_to cirurgia_url(@cirurgia)
  end

  test "should destroy cirurgia" do
    assert_difference("Cirurgia.count", -1) do
      delete cirurgia_url(@cirurgia)
    end

    assert_redirected_to cirurgias_url
  end
end
