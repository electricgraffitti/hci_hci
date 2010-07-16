require 'test_helper'

class FriendInvitesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friend_invites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friend_invite" do
    assert_difference('FriendInvite.count') do
      post :create, :friend_invite => { }
    end

    assert_redirected_to friend_invite_path(assigns(:friend_invite))
  end

  test "should show friend_invite" do
    get :show, :id => friend_invites(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => friend_invites(:one).to_param
    assert_response :success
  end

  test "should update friend_invite" do
    put :update, :id => friend_invites(:one).to_param, :friend_invite => { }
    assert_redirected_to friend_invite_path(assigns(:friend_invite))
  end

  test "should destroy friend_invite" do
    assert_difference('FriendInvite.count', -1) do
      delete :destroy, :id => friend_invites(:one).to_param
    end

    assert_redirected_to friend_invites_path
  end
end
