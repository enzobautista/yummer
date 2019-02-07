require "application_system_test_case"

class YummiesTest < ApplicationSystemTestCase
  setup do
    @yummy = yummies(:one)
  end

  test "visiting the index" do
    visit yummies_url
    assert_selector "h1", text: "Yummies"
  end

  test "creating a Yummy" do
    visit yummies_url
    click_on "New Yummy"

    fill_in "Ave price", with: @yummy.ave_price
    fill_in "Category", with: @yummy.category_id
    fill_in "Comments", with: @yummy.comments
    fill_in "Current order", with: @yummy.current_order
    fill_in "Details", with: @yummy.details
    fill_in "Edf high", with: @yummy.edf_high
    fill_in "Edf low", with: @yummy.edf_low
    fill_in "Max order", with: @yummy.max_order
    fill_in "Min order", with: @yummy.min_order
    fill_in "Order cut off", with: @yummy.order_cut_off
    fill_in "User", with: @yummy.user_id
    click_on "Create Yummy"

    assert_text "Yummy was successfully created"
    click_on "Back"
  end

  test "updating a Yummy" do
    visit yummies_url
    click_on "Edit", match: :first

    fill_in "Ave price", with: @yummy.ave_price
    fill_in "Category", with: @yummy.category_id
    fill_in "Comments", with: @yummy.comments
    fill_in "Current order", with: @yummy.current_order
    fill_in "Details", with: @yummy.details
    fill_in "Edf high", with: @yummy.edf_high
    fill_in "Edf low", with: @yummy.edf_low
    fill_in "Max order", with: @yummy.max_order
    fill_in "Min order", with: @yummy.min_order
    fill_in "Order cut off", with: @yummy.order_cut_off
    fill_in "User", with: @yummy.user_id
    click_on "Update Yummy"

    assert_text "Yummy was successfully updated"
    click_on "Back"
  end

  test "destroying a Yummy" do
    visit yummies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yummy was successfully destroyed"
  end
end
