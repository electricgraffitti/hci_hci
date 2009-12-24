require 'test_helper'

class ServiceInquiriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_inquiries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_inquiry" do
    assert_difference('ServiceInquiry.count') do
      post :create, :service_inquiry => { }
    end

    assert_redirected_to service_inquiry_path(assigns(:service_inquiry))
  end

  test "should show service_inquiry" do
    get :show, :id => service_inquiries(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => service_inquiries(:one).to_param
    assert_response :success
  end

  test "should update service_inquiry" do
    put :update, :id => service_inquiries(:one).to_param, :service_inquiry => { }
    assert_redirected_to service_inquiry_path(assigns(:service_inquiry))
  end

  test "should destroy service_inquiry" do
    assert_difference('ServiceInquiry.count', -1) do
      delete :destroy, :id => service_inquiries(:one).to_param
    end

    assert_redirected_to service_inquiries_path
  end
end
