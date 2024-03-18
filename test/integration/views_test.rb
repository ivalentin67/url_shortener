require "test_helper"

class ViewsTest < ActionDispatch::IntegrationTest
  test "viewing a link records a view" do
    link = links(:one)
    views_count = link.views_count
    assert_difference "View.count" do
      get view_path(link)
      assert_equal views_count + 1, link.reload.views_count
    end
  end

  test "visiting a link redirects to the url" do
    link = links(:one)
    get view_path(link)
    assert_redirected_to link.url
  end
end