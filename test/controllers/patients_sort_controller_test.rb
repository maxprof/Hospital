require 'test_helper'

class PatientsSortControllerTest < ActionController::TestCase
  test "should get last_three" do
    get :last_three
    assert_response :success
  end

  test "should get last_seven" do
    get :last_seven
    assert_response :success
  end

  test "should get last_one" do
    get :last_one
    assert_response :success
  end

end
