require 'test_helper'

class CampaignPeopleControllerTest < ActionController::TestCase
  setup do
    @campaign_person = campaign_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campaign_person" do
    assert_difference('CampaignPerson.count') do
      post :create, :campaign_person => @campaign_person.attributes
    end

    assert_redirected_to campaign_person_path(assigns(:campaign_person))
  end

  test "should show campaign_person" do
    get :show, :id => @campaign_person.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @campaign_person.to_param
    assert_response :success
  end

  test "should update campaign_person" do
    put :update, :id => @campaign_person.to_param, :campaign_person => @campaign_person.attributes
    assert_redirected_to campaign_person_path(assigns(:campaign_person))
  end

  test "should destroy campaign_person" do
    assert_difference('CampaignPerson.count', -1) do
      delete :destroy, :id => @campaign_person.to_param
    end

    assert_redirected_to campaign_people_path
  end
end
