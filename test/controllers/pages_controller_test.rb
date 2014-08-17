require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get promos" do
    get :promos
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
