require "test_helper"

class WebsiteControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get website_home_url
    assert_response :success
  end

  test "should get listing" do
    get website_listing_url
    assert_response :success
  end

  test "should get about" do
    get website_about_url
    assert_response :success
  end

  test "should get contact" do
    get website_contact_url
    assert_response :success
  end

  test "should get blog" do
    get website_blog_url
    assert_response :success
  end

  test "should get testimonial" do
    get website_testimonial_url
    assert_response :success
  end
end
