require 'test_helper'

class ContactactionsControllerTest < ActionController::TestCase
  setup do
    @contactaction = contactactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contactaction" do
    assert_difference('Contactaction.count') do
      post :create, :contactaction => @contactaction.attributes
    end

    assert_redirected_to contactaction_path(assigns(:contactaction))
  end

  test "should show contactaction" do
    get :show, :id => @contactaction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @contactaction.to_param
    assert_response :success
  end

  test "should update contactaction" do
    put :update, :id => @contactaction.to_param, :contactaction => @contactaction.attributes
    assert_redirected_to contactaction_path(assigns(:contactaction))
  end

  test "should destroy contactaction" do
    assert_difference('Contactaction.count', -1) do
      delete :destroy, :id => @contactaction.to_param
    end

    assert_redirected_to contactactions_path
  end
end
