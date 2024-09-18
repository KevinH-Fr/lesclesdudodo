require "application_system_test_case"

class EnfantsTest < ApplicationSystemTestCase
  setup do
    @enfant = enfants(:one)
  end

  test "visiting the index" do
    visit enfants_url
    assert_selector "h1", text: "Enfants"
  end

  test "should create enfant" do
    visit enfants_url
    click_on "New enfant"

    fill_in "Birth", with: @enfant.birth
    fill_in "Prenom", with: @enfant.prenom
    fill_in "User", with: @enfant.user_id
    click_on "Create Enfant"

    assert_text "Enfant was successfully created"
    click_on "Back"
  end

  test "should update Enfant" do
    visit enfant_url(@enfant)
    click_on "Edit this enfant", match: :first

    fill_in "Birth", with: @enfant.birth
    fill_in "Prenom", with: @enfant.prenom
    fill_in "User", with: @enfant.user_id
    click_on "Update Enfant"

    assert_text "Enfant was successfully updated"
    click_on "Back"
  end

  test "should destroy Enfant" do
    visit enfant_url(@enfant)
    click_on "Destroy this enfant", match: :first

    assert_text "Enfant was successfully destroyed"
  end
end
