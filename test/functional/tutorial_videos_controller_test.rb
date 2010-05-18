require 'test_helper'

class TutorialVideosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_video" do
    assert_difference('TutorialVideo.count') do
      post :create, :tutorial_video => { }
    end

    assert_redirected_to tutorial_video_path(assigns(:tutorial_video))
  end

  test "should show tutorial_video" do
    get :show, :id => tutorial_videos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tutorial_videos(:one).to_param
    assert_response :success
  end

  test "should update tutorial_video" do
    put :update, :id => tutorial_videos(:one).to_param, :tutorial_video => { }
    assert_redirected_to tutorial_video_path(assigns(:tutorial_video))
  end

  test "should destroy tutorial_video" do
    assert_difference('TutorialVideo.count', -1) do
      delete :destroy, :id => tutorial_videos(:one).to_param
    end

    assert_redirected_to tutorial_videos_path
  end
end
