require "test_helper"

class TailwindControllerTest < ActionDispatch::IntegrationTest
  test "should get blog_post" do
    get tailwind_blog_post_url
    assert_response :success
  end

  test "should get sign_in" do
    get tailwind_sign_in_url
    assert_response :success
  end
end
