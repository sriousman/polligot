require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  def setup
  @base_title = "Polligot App"
end

  test "should get root" do
  get root_url
  assert_response :success
  end

  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title"
  end

  test "should get help" do
    get pages_help_url
    assert_response :success
    assert_select "title"
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
    assert_select "title"
  end
end