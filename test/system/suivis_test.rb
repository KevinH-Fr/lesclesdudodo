require "application_system_test_case"

class SuivisTest < ApplicationSystemTestCase
  setup do
    @suivi = suivis(:one)
  end

  test "visiting the index" do
    visit suivis_url
    assert_selector "h1", text: "Suivis"
  end

  test "should create suivi" do
    visit suivis_url
    click_on "New suivi"

    fill_in "Enfant", with: @suivi.enfant_id
    fill_in "Heure endormissement", with: @suivi.heure_endormissement
    fill_in "Temps endormissement", with: @suivi.temps_endormissement
    click_on "Create Suivi"

    assert_text "Suivi was successfully created"
    click_on "Back"
  end

  test "should update Suivi" do
    visit suivi_url(@suivi)
    click_on "Edit this suivi", match: :first

    fill_in "Enfant", with: @suivi.enfant_id
    fill_in "Heure endormissement", with: @suivi.heure_endormissement
    fill_in "Temps endormissement", with: @suivi.temps_endormissement
    click_on "Update Suivi"

    assert_text "Suivi was successfully updated"
    click_on "Back"
  end

  test "should destroy Suivi" do
    visit suivi_url(@suivi)
    click_on "Destroy this suivi", match: :first

    assert_text "Suivi was successfully destroyed"
  end
end
