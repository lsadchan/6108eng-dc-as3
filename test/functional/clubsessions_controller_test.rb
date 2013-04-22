require 'test_helper'

class ClubsessionsControllerTest < ActionController::TestCase
  setup do
    @clubsession = clubsessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubsessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clubsession" do
    assert_difference('Clubsession.count') do
      post :create, clubsession: { audience: @clubsession.audience, endtime: @clubsession.endtime, sessioninfo: @clubsession.sessioninfo, starttime: @clubsession.starttime }
    end

    assert_redirected_to clubsession_path(assigns(:clubsession))
  end

  test "should show clubsession" do
    get :show, id: @clubsession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clubsession
    assert_response :success
  end

  test "should update clubsession" do
    put :update, id: @clubsession, clubsession: { audience: @clubsession.audience, endtime: @clubsession.endtime, sessioninfo: @clubsession.sessioninfo, starttime: @clubsession.starttime }
    assert_redirected_to clubsession_path(assigns(:clubsession))
  end

  test "should destroy clubsession" do
    assert_difference('Clubsession.count', -1) do
      delete :destroy, id: @clubsession
    end

    assert_redirected_to clubsessions_path
  end
end
