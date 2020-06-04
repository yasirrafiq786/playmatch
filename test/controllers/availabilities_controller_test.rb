require 'test_helper'

class AvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get availabilities_index_url
    assert_response :success
  end

  test "should get new" do
    get availabilities_new_url
    assert_response :success
  end

  test "should get create" do
    get availabilities_create_url
    assert_response :success
  end

  test "should get show" do
    get availabilities_show_url
    assert_response :success
  end

end
