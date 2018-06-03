require 'test_helper'

class BattleSprintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battle_sprint = battle_sprints(:one)
  end

  test "should get index" do
    get battle_sprints_url
    assert_response :success
  end

  test "should get new" do
    get new_battle_sprint_url
    assert_response :success
  end

  test "should create battle_sprint" do
    assert_difference('BattleSprint.count') do
      post battle_sprints_url, params: { battle_sprint: { end_date: @battle_sprint.end_date, month: @battle_sprint.month, start_date: @battle_sprint.start_date } }
    end

    assert_redirected_to battle_sprint_url(BattleSprint.last)
  end

  test "should show battle_sprint" do
    get battle_sprint_url(@battle_sprint)
    assert_response :success
  end

  test "should get edit" do
    get edit_battle_sprint_url(@battle_sprint)
    assert_response :success
  end

  test "should update battle_sprint" do
    patch battle_sprint_url(@battle_sprint), params: { battle_sprint: { end_date: @battle_sprint.end_date, month: @battle_sprint.month, start_date: @battle_sprint.start_date } }
    assert_redirected_to battle_sprint_url(@battle_sprint)
  end

  test "should destroy battle_sprint" do
    assert_difference('BattleSprint.count', -1) do
      delete battle_sprint_url(@battle_sprint)
    end

    assert_redirected_to battle_sprints_url
  end
end
