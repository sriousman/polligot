require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Polligot App"
    assert_equal full_title("Help"),"Help | Polligot App" 
  end
end
