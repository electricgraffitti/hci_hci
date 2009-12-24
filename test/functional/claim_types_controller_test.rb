require 'test_helper'

class ClaimTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:claim_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create claim_type" do
    assert_difference('ClaimType.count') do
      post :create, :claim_type => { }
    end

    assert_redirected_to claim_type_path(assigns(:claim_type))
  end

  test "should show claim_type" do
    get :show, :id => claim_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => claim_types(:one).to_param
    assert_response :success
  end

  test "should update claim_type" do
    put :update, :id => claim_types(:one).to_param, :claim_type => { }
    assert_redirected_to claim_type_path(assigns(:claim_type))
  end

  test "should destroy claim_type" do
    assert_difference('ClaimType.count', -1) do
      delete :destroy, :id => claim_types(:one).to_param
    end

    assert_redirected_to claim_types_path
  end
end
