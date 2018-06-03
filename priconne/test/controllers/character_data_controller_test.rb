require 'test_helper'

class CharacterDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_datum = character_data(:one)
  end

  test "should get index" do
    get character_data_url
    assert_response :success
  end

  test "should get new" do
    get new_character_datum_url
    assert_response :success
  end

  test "should create character_datum" do
    assert_difference('CharacterDatum.count') do
      post character_data_url, params: { character_datum: { img_path: @character_datum.img_path, name: @character_datum.name, role: @character_datum.role } }
    end

    assert_redirected_to character_datum_url(CharacterDatum.last)
  end

  test "should show character_datum" do
    get character_datum_url(@character_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_datum_url(@character_datum)
    assert_response :success
  end

  test "should update character_datum" do
    patch character_datum_url(@character_datum), params: { character_datum: { img_path: @character_datum.img_path, name: @character_datum.name, role: @character_datum.role } }
    assert_redirected_to character_datum_url(@character_datum)
  end

  test "should destroy character_datum" do
    assert_difference('CharacterDatum.count', -1) do
      delete character_datum_url(@character_datum)
    end

    assert_redirected_to character_data_url
  end
end
