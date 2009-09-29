require 'test_helper'

class NewsletterSubscriptionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsletter_subscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsletter_subscription" do
    assert_difference('NewsletterSubscription.count') do
      post :create, :newsletter_subscription => { }
    end

    assert_redirected_to newsletter_subscription_path(assigns(:newsletter_subscription))
  end

  test "should show newsletter_subscription" do
    get :show, :id => newsletter_subscriptions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => newsletter_subscriptions(:one).to_param
    assert_response :success
  end

  test "should update newsletter_subscription" do
    put :update, :id => newsletter_subscriptions(:one).to_param, :newsletter_subscription => { }
    assert_redirected_to newsletter_subscription_path(assigns(:newsletter_subscription))
  end

  test "should destroy newsletter_subscription" do
    assert_difference('NewsletterSubscription.count', -1) do
      delete :destroy, :id => newsletter_subscriptions(:one).to_param
    end

    assert_redirected_to newsletter_subscriptions_path
  end
end
