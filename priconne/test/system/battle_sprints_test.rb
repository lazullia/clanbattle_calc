require "application_system_test_case"

class BattleSprintsTest < ApplicationSystemTestCase
  setup do
    @battle_sprint = battle_sprints(:one)
  end

  test "visiting the index" do
    visit battle_sprints_url
    assert_selector "h1", text: "Battle Sprints"
  end

  test "creating a Battle sprint" do
    visit battle_sprints_url
    click_on "New Battle Sprint"

    fill_in "End Date", with: @battle_sprint.end_date
    fill_in "Month", with: @battle_sprint.month
    fill_in "Start Date", with: @battle_sprint.start_date
    click_on "Create Battle sprint"

    assert_text "Battle sprint was successfully created"
    click_on "Back"
  end

  test "updating a Battle sprint" do
    visit battle_sprints_url
    click_on "Edit", match: :first

    fill_in "End Date", with: @battle_sprint.end_date
    fill_in "Month", with: @battle_sprint.month
    fill_in "Start Date", with: @battle_sprint.start_date
    click_on "Update Battle sprint"

    assert_text "Battle sprint was successfully updated"
    click_on "Back"
  end

  test "destroying a Battle sprint" do
    visit battle_sprints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Battle sprint was successfully destroyed"
  end
end
