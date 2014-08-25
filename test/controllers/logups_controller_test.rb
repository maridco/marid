require 'test_helper'

class LogupsControllerTest < ActionController::TestCase
  setup do
    @logup = logups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logup" do
    assert_difference('Logup.count') do
      post :create, logup: { email: @logup.email, fullname: @logup.fullname }
    end

    assert_redirected_to logup_path(assigns(:logup))
  end

  test "should show logup" do
    get :show, id: @logup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logup
    assert_response :success
  end

  test "should update logup" do
    patch :update, id: @logup, logup: { email: @logup.email, fullname: @logup.fullname }
    assert_redirected_to logup_path(assigns(:logup))
  end

  test "should destroy logup" do
    assert_difference('Logup.count', -1) do
      delete :destroy, id: @logup
    end

    assert_redirected_to logups_path
  end
end
