require "application_system_test_case"

class CharacterDataTest < ApplicationSystemTestCase
  setup do
    @character_datum = character_data(:one)
  end

  test "visiting the index" do
    visit character_data_url
    assert_selector "h1", text: "Character Data"
  end

  test "creating a Character datum" do
    visit character_data_url
    click_on "New Character Datum"

    fill_in "Img Path", with: @character_datum.img_path
    fill_in "Name", with: @character_datum.name
    fill_in "Role", with: @character_datum.role
    click_on "Create Character datum"

    assert_text "Character datum was successfully created"
    click_on "Back"
  end

  test "updating a Character datum" do
    visit character_data_url
    click_on "Edit", match: :first

    fill_in "Img Path", with: @character_datum.img_path
    fill_in "Name", with: @character_datum.name
    fill_in "Role", with: @character_datum.role
    click_on "Update Character datum"

    assert_text "Character datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Character datum" do
    visit character_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character datum was successfully destroyed"
  end
end
