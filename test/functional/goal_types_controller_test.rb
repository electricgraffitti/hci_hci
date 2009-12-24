require 'test_helper'

class GoalTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goal_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goal_type" do
    assert_difference('GoalType.count') do
      post :create, :goal_type => { }
    end

    assert_redirected_to goal_type_path(assigns(:goal_type))
  end

  test "should show goal_type" do
    get :show, :id => goal_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => goal_types(:one).to_param
    assert_response :success
  end

  test "should update goal_type" do
    put :update, :id => goal_types(:one).to_param, :goal_type => { }
    assert_redirected_to goal_type_path(assigns(:goal_type))
  end

  test "should destroy goal_type" do
    assert_difference('GoalType.count', -1) do
      delete :destroy, :id => goal_types(:one).to_param
    end

    assert_redirected_to goal_types_path
  end
end
