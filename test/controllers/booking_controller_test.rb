require "test_helper"

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get booking_find_url
    assert_response :success
  end

  test "should get show" do
    get booking_show_url
    assert_response :success
  end
end
