require 'test_helper'

class ArticleTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_type" do
    assert_difference('ArticleType.count') do
      post :create, :article_type => { }
    end

    assert_redirected_to article_type_path(assigns(:article_type))
  end

  test "should show article_type" do
    get :show, :id => article_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => article_types(:one).to_param
    assert_response :success
  end

  test "should update article_type" do
    put :update, :id => article_types(:one).to_param, :article_type => { }
    assert_redirected_to article_type_path(assigns(:article_type))
  end

  test "should destroy article_type" do
    assert_difference('ArticleType.count', -1) do
      delete :destroy, :id => article_types(:one).to_param
    end

    assert_redirected_to article_types_path
  end
end
