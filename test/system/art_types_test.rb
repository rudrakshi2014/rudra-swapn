require "application_system_test_case"

class ArtTypesTest < ApplicationSystemTestCase
  setup do
    @art_type = art_types(:one)
  end

  test "visiting the index" do
    visit art_types_url
    assert_selector "h1", text: "Art types"
  end

  test "should create art type" do
    visit art_types_url
    click_on "New art type"

    fill_in "Description", with: @art_type.description
    fill_in "Name", with: @art_type.name
    click_on "Create Art type"

    assert_text "Art type was successfully created"
    click_on "Back"
  end

  test "should update Art type" do
    visit art_type_url(@art_type)
    click_on "Edit this art type", match: :first

    fill_in "Description", with: @art_type.description
    fill_in "Name", with: @art_type.name
    click_on "Update Art type"

    assert_text "Art type was successfully updated"
    click_on "Back"
  end

  test "should destroy Art type" do
    visit art_type_url(@art_type)
    click_on "Destroy this art type", match: :first

    assert_text "Art type was successfully destroyed"
  end
end
