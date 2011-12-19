require 'test_helper'

class CustomersbindsControllerTest < ActionController::TestCase
  setup do
    @customersbind = customersbinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customersbinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customersbind" do
    assert_difference('Customersbind.count') do
      post :create, :customersbind => @customersbind.attributes
    end

    assert_redirected_to customersbind_path(assigns(:customersbind))
  end

  test "should show customersbind" do
    get :show, :id => @customersbind.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @customersbind.to_param
    assert_response :success
  end

  test "should update customersbind" do
    put :update, :id => @customersbind.to_param, :customersbind => @customersbind.attributes
    assert_redirected_to customersbind_path(assigns(:customersbind))
  end

  test "should destroy customersbind" do
    assert_difference('Customersbind.count', -1) do
      delete :destroy, :id => @customersbind.to_param
    end

    assert_redirected_to customersbinds_path
  end
end
