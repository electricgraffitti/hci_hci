require 'test_helper'

class PrioritiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:priorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create priority" do
    assert_difference('Priority.count') do
      post :create, :priority => { }
    end

    assert_redirected_to priority_path(assigns(:priority))
  end

  test "should show priority" do
    get :show, :id => priorities(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => priorities(:one).to_param
    assert_response :success
  end

  test "should update priority" do
    put :update, :id => priorities(:one).to_param, :priority => { }
    assert_redirected_to priority_path(assigns(:priority))
  end

  test "should destroy priority" do
    assert_difference('Priority.count', -1) do
      delete :destroy, :id => priorities(:one).to_param
    end

    assert_redirected_to priorities_path
  end
end
