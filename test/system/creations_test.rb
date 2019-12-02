require "application_system_test_case"

class CreationsTest < ApplicationSystemTestCase
  setup do
    @creation = creations(:one)
  end

  test "visiting the index" do
    visit creations_url
    assert_selector "h1", text: "Creations"
  end

  test "creating a Creation" do
    visit creations_url
    click_on "New Creation"

    fill_in "Totranslate", with: @creation.totranslate
    fill_in "Translated", with: @creation.translated
    click_on "Create Creation"

    assert_text "Creation was successfully created"
    click_on "Back"
  end

  test "updating a Creation" do
    visit creations_url
    click_on "Edit", match: :first

    fill_in "Totranslate", with: @creation.totranslate
    fill_in "Translated", with: @creation.translated
    click_on "Update Creation"

    assert_text "Creation was successfully updated"
    click_on "Back"
  end

  test "destroying a Creation" do
    visit creations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creation was successfully destroyed"
  end
end
