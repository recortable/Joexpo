require 'test_helper'

class ExposControllerTest < ActionController::TestCase
  setup do
    @expo = expos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expo" do
    assert_difference('Expo.count') do
      post :create, :expo => @expo.attributes
    end

    assert_redirected_to expo_path(assigns(:expo))
  end

  test "should show expo" do
    get :show, :id => @expo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @expo.to_param
    assert_response :success
  end

  test "should update expo" do
    put :update, :id => @expo.to_param, :expo => @expo.attributes
    assert_redirected_to expo_path(assigns(:expo))
  end

  test "should destroy expo" do
    assert_difference('Expo.count', -1) do
      delete :destroy, :id => @expo.to_param
    end

    assert_redirected_to expos_path
  end
end
