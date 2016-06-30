require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
  get root_path
  assert_response :success
  assert_select "title", "Polligot App"
  end

  test "should get home" do
  get root_path
    assert_response :success
    assert_select "title", "Polligot App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Polligot App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Polligot App"
  end
end
