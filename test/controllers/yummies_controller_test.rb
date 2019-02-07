require 'test_helper'

class YummiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yummy = yummies(:one)
  end

  test "should get index" do
    get yummies_url
    assert_response :success
  end

  test "should get new" do
    get new_yummy_url
    assert_response :success
  end

  test "should create yummy" do
    assert_difference('Yummy.count') do
      post yummies_url, params: { yummy: { ave_price: @yummy.ave_price, category_id: @yummy.category_id, comments: @yummy.comments, current_order: @yummy.current_order, details: @yummy.details, edf_high: @yummy.edf_high, edf_low: @yummy.edf_low, max_order: @yummy.max_order, min_order: @yummy.min_order, order_cut_off: @yummy.order_cut_off, user_id: @yummy.user_id } }
    end

    assert_redirected_to yummy_url(Yummy.last)
  end

  test "should show yummy" do
    get yummy_url(@yummy)
    assert_response :success
  end

  test "should get edit" do
    get edit_yummy_url(@yummy)
    assert_response :success
  end

  test "should update yummy" do
    patch yummy_url(@yummy), params: { yummy: { ave_price: @yummy.ave_price, category_id: @yummy.category_id, comments: @yummy.comments, current_order: @yummy.current_order, details: @yummy.details, edf_high: @yummy.edf_high, edf_low: @yummy.edf_low, max_order: @yummy.max_order, min_order: @yummy.min_order, order_cut_off: @yummy.order_cut_off, user_id: @yummy.user_id } }
    assert_redirected_to yummy_url(@yummy)
  end

  test "should destroy yummy" do
    assert_difference('Yummy.count', -1) do
      delete yummy_url(@yummy)
    end

    assert_redirected_to yummies_url
  end
end
