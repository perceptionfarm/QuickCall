require 'test_helper'

class PromotersbindsControllerTest < ActionController::TestCase
  setup do
    @promotersbind = promotersbinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotersbinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotersbind" do
    assert_difference('Promotersbind.count') do
      post :create, :promotersbind => @promotersbind.attributes
    end

    assert_redirected_to promotersbind_path(assigns(:promotersbind))
  end

  test "should show promotersbind" do
    get :show, :id => @promotersbind.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @promotersbind.to_param
    assert_response :success
  end

  test "should update promotersbind" do
    put :update, :id => @promotersbind.to_param, :promotersbind => @promotersbind.attributes
    assert_redirected_to promotersbind_path(assigns(:promotersbind))
  end

  test "should destroy promotersbind" do
    assert_difference('Promotersbind.count', -1) do
      delete :destroy, :id => @promotersbind.to_param
    end

    assert_redirected_to promotersbinds_path
  end
end
