require 'test_helper'

class IndependantsControllerTest < ActionController::TestCase
  setup do
    @independant = independants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:independants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create independant" do
    assert_difference('Independant.count') do
      post :create, independant: @independant.attributes
    end

    assert_redirected_to independant_path(assigns(:independant))
  end

  test "should show independant" do
    get :show, id: @independant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @independant.to_param
    assert_response :success
  end

  test "should update independant" do
    put :update, id: @independant.to_param, independant: @independant.attributes
    assert_redirected_to independant_path(assigns(:independant))
  end

  test "should destroy independant" do
    assert_difference('Independant.count', -1) do
      delete :destroy, id: @independant.to_param
    end

    assert_redirected_to independants_path
  end
end
