require "application_system_test_case"

class TransbanksTest < ApplicationSystemTestCase
  setup do
    @transbank = transbanks(:one)
  end

  test "visiting the index" do
    visit transbanks_url
    assert_selector "h1", text: "Transbanks"
  end

  test "creating a Transbank" do
    visit transbanks_url
    click_on "New Transbank"

    fill_in "Category", with: @transbank.category_id
    fill_in "Category type", with: @transbank.category_type
    click_on "Create Transbank"

    assert_text "Transbank was successfully created"
    click_on "Back"
  end

  test "updating a Transbank" do
    visit transbanks_url
    click_on "Edit", match: :first

    fill_in "Category", with: @transbank.category_id
    fill_in "Category type", with: @transbank.category_type
    click_on "Update Transbank"

    assert_text "Transbank was successfully updated"
    click_on "Back"
  end

  test "destroying a Transbank" do
    visit transbanks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transbank was successfully destroyed"
  end
end
