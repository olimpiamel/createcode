require "application_system_test_case"

class CroationsTest < ApplicationSystemTestCase
  setup do
    @croation = croations(:one)
  end

  test "visiting the index" do
    visit croations_url
    assert_selector "h1", text: "Croations"
  end

  test "creating a Croation" do
    visit croations_url
    click_on "New Croation"

    fill_in "Lang1", with: @croation.lang1
    fill_in "Lang2", with: @croation.lang2
    fill_in "Title", with: @croation.title
    fill_in "Totrans", with: @croation.totrans
    fill_in "Translated", with: @croation.translated
    click_on "Create Croation"

    assert_text "Croation was successfully created"
    click_on "Back"
  end

  test "updating a Croation" do
    visit croations_url
    click_on "Edit", match: :first

    fill_in "Lang1", with: @croation.lang1
    fill_in "Lang2", with: @croation.lang2
    fill_in "Title", with: @croation.title
    fill_in "Totrans", with: @croation.totrans
    fill_in "Translated", with: @croation.translated
    click_on "Update Croation"

    assert_text "Croation was successfully updated"
    click_on "Back"
  end

  test "destroying a Croation" do
    visit croations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Croation was successfully destroyed"
  end
end
