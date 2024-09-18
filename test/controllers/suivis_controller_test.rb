require "test_helper"

class SuivisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suivi = suivis(:one)
  end

  test "should get index" do
    get suivis_url
    assert_response :success
  end

  test "should get new" do
    get new_suivi_url
    assert_response :success
  end

  test "should create suivi" do
    assert_difference("Suivi.count") do
      post suivis_url, params: { suivi: { enfant_id: @suivi.enfant_id, heure_endormissement: @suivi.heure_endormissement, temps_endormissement: @suivi.temps_endormissement } }
    end

    assert_redirected_to suivi_url(Suivi.last)
  end

  test "should show suivi" do
    get suivi_url(@suivi)
    assert_response :success
  end

  test "should get edit" do
    get edit_suivi_url(@suivi)
    assert_response :success
  end

  test "should update suivi" do
    patch suivi_url(@suivi), params: { suivi: { enfant_id: @suivi.enfant_id, heure_endormissement: @suivi.heure_endormissement, temps_endormissement: @suivi.temps_endormissement } }
    assert_redirected_to suivi_url(@suivi)
  end

  test "should destroy suivi" do
    assert_difference("Suivi.count", -1) do
      delete suivi_url(@suivi)
    end

    assert_redirected_to suivis_url
  end
end
