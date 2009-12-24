require 'test_helper'

class BusinessTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_type" do
    assert_difference('BusinessType.count') do
      post :create, :business_type => { }
    end

    assert_redirected_to business_type_path(assigns(:business_type))
  end

  test "should show business_type" do
    get :show, :id => business_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => business_types(:one).to_param
    assert_response :success
  end

  test "should update business_type" do
    put :update, :id => business_types(:one).to_param, :business_type => { }
    assert_redirected_to business_type_path(assigns(:business_type))
  end

  test "should destroy business_type" do
    assert_difference('BusinessType.count', -1) do
      delete :destroy, :id => business_types(:one).to_param
    end

    assert_redirected_to business_types_path
  end
end
