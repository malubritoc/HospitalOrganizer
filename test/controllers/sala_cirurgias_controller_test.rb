require "test_helper"

class SalaCirurgiasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sala_cirurgia = sala_cirurgias(:one)
  end

  test "should get index" do
    get sala_cirurgias_url
    assert_response :success
  end

  test "should get new" do
    get new_sala_cirurgia_url
    assert_response :success
  end

  test "should create sala_cirurgia" do
    assert_difference("SalaCirurgia.count") do
      post sala_cirurgias_url, params: { sala_cirurgia: { especialidade: @sala_cirurgia.especialidade, nome: @sala_cirurgia.nome } }
    end

    assert_redirected_to sala_cirurgia_url(SalaCirurgia.last)
  end

  test "should show sala_cirurgia" do
    get sala_cirurgia_url(@sala_cirurgia)
    assert_response :success
  end

  test "should get edit" do
    get edit_sala_cirurgia_url(@sala_cirurgia)
    assert_response :success
  end

  test "should update sala_cirurgia" do
    patch sala_cirurgia_url(@sala_cirurgia), params: { sala_cirurgia: { especialidade: @sala_cirurgia.especialidade, nome: @sala_cirurgia.nome } }
    assert_redirected_to sala_cirurgia_url(@sala_cirurgia)
  end

  test "should destroy sala_cirurgia" do
    assert_difference("SalaCirurgia.count", -1) do
      delete sala_cirurgia_url(@sala_cirurgia)
    end

    assert_redirected_to sala_cirurgias_url
  end
end
