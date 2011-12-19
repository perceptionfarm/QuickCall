require 'test_helper'

class ProductsbindsControllerTest < ActionController::TestCase
  setup do
    @productsbind = productsbinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productsbinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productsbind" do
    assert_difference('Productsbind.count') do
      post :create, :productsbind => @productsbind.attributes
    end

    assert_redirected_to productsbind_path(assigns(:productsbind))
  end

  test "should show productsbind" do
    get :show, :id => @productsbind.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @productsbind.to_param
    assert_response :success
  end

  test "should update productsbind" do
    put :update, :id => @productsbind.to_param, :productsbind => @productsbind.attributes
    assert_redirected_to productsbind_path(assigns(:productsbind))
  end

  test "should destroy productsbind" do
    assert_difference('Productsbind.count', -1) do
      delete :destroy, :id => @productsbind.to_param
    end

    assert_redirected_to productsbinds_path
  end
end
