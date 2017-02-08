require 'test_helper'

class HumanPersonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get human_person_index_url
    assert_response :success
  end

  test "should get show" do
    get human_person_show_url
    assert_response :success
  end

  test "should get new" do
    get human_person_new_url
    assert_response :success
  end

end
