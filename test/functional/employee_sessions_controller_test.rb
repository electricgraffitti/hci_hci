require 'test_helper'

class EmployeeSessionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_session" do
    assert_difference('EmployeeSession.count') do
      post :create, :employee_session => { }
    end

    assert_redirected_to employee_session_path(assigns(:employee_session))
  end

  test "should show employee_session" do
    get :show, :id => employee_sessions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => employee_sessions(:one).to_param
    assert_response :success
  end

  test "should update employee_session" do
    put :update, :id => employee_sessions(:one).to_param, :employee_session => { }
    assert_redirected_to employee_session_path(assigns(:employee_session))
  end

  test "should destroy employee_session" do
    assert_difference('EmployeeSession.count', -1) do
      delete :destroy, :id => employee_sessions(:one).to_param
    end

    assert_redirected_to employee_sessions_path
  end
end
