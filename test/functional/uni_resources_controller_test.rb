require 'test_helper'

class UniResourcesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uni_resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uni_resource" do
    assert_difference('UniResource.count') do
      post :create, :uni_resource => { }
    end

    assert_redirected_to uni_resource_path(assigns(:uni_resource))
  end

  test "should show uni_resource" do
    get :show, :id => uni_resources(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => uni_resources(:one).to_param
    assert_response :success
  end

  test "should update uni_resource" do
    put :update, :id => uni_resources(:one).to_param, :uni_resource => { }
    assert_redirected_to uni_resource_path(assigns(:uni_resource))
  end

  test "should destroy uni_resource" do
    assert_difference('UniResource.count', -1) do
      delete :destroy, :id => uni_resources(:one).to_param
    end

    assert_redirected_to uni_resources_path
  end
end
