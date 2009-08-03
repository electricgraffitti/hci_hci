require 'test_helper'

class TicketUpdatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_updates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_update" do
    assert_difference('TicketUpdate.count') do
      post :create, :ticket_update => { }
    end

    assert_redirected_to ticket_update_path(assigns(:ticket_update))
  end

  test "should show ticket_update" do
    get :show, :id => ticket_updates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ticket_updates(:one).to_param
    assert_response :success
  end

  test "should update ticket_update" do
    put :update, :id => ticket_updates(:one).to_param, :ticket_update => { }
    assert_redirected_to ticket_update_path(assigns(:ticket_update))
  end

  test "should destroy ticket_update" do
    assert_difference('TicketUpdate.count', -1) do
      delete :destroy, :id => ticket_updates(:one).to_param
    end

    assert_redirected_to ticket_updates_path
  end
end
