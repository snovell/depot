require 'test_helper'

class DarkFeaturesControllerTest < ActionController::TestCase
  setup do
    @dark_feature = dark_features(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dark_features)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dark_feature" do
    assert_difference('DarkFeature.count') do
      post :create, :dark_feature => @dark_feature.attributes
    end

    assert_redirected_to dark_feature_path(assigns(:dark_feature))
  end

  test "should show dark_feature" do
    get :show, :id => @dark_feature.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dark_feature.to_param
    assert_response :success
  end

  test "should update dark_feature" do
    put :update, :id => @dark_feature.to_param, :dark_feature => @dark_feature.attributes
    assert_redirected_to dark_feature_path(assigns(:dark_feature))
  end

  test "should destroy dark_feature" do
    assert_difference('DarkFeature.count', -1) do
      delete :destroy, :id => @dark_feature.to_param
    end

    assert_redirected_to dark_features_path
  end
end
