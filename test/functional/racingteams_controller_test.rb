require 'test_helper'

class RacingteamsControllerTest < ActionController::TestCase
  setup do
    @racingteam = racingteams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:racingteams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create racingteam" do
    assert_difference('Racingteam.count') do
      post :create, racingteam: { body: @racingteam.body, title: @racingteam.title }
    end

    assert_redirected_to racingteam_path(assigns(:racingteam))
  end

  test "should show racingteam" do
    get :show, id: @racingteam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @racingteam
    assert_response :success
  end

  test "should update racingteam" do
    put :update, id: @racingteam, racingteam: { body: @racingteam.body, title: @racingteam.title }
    assert_redirected_to racingteam_path(assigns(:racingteam))
  end

  test "should destroy racingteam" do
    assert_difference('Racingteam.count', -1) do
      delete :destroy, id: @racingteam
    end

    assert_redirected_to racingteams_path
  end
end
