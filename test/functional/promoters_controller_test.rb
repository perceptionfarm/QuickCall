require 'test_helper'

class PromotersControllerTest < ActionController::TestCase
  setup do
    @promoter = promoters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promoters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promoter" do
    assert_difference('Promoter.count') do
      post :create, :promoter => @promoter.attributes
    end

    assert_redirected_to promoter_path(assigns(:promoter))
  end

  test "should show promoter" do
    get :show, :id => @promoter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @promoter.to_param
    assert_response :success
  end

  test "should update promoter" do
    put :update, :id => @promoter.to_param, :promoter => @promoter.attributes
    assert_redirected_to promoter_path(assigns(:promoter))
  end

  test "should destroy promoter" do
    assert_difference('Promoter.count', -1) do
      delete :destroy, :id => @promoter.to_param
    end

    assert_redirected_to promoters_path
  end
end
