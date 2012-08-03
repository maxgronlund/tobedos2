require 'test_helper'

class TobedosControllerTest < ActionController::TestCase
  setup do
    @tobedo = tobedos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tobedos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tobedo" do
    assert_difference('Tobedo.count') do
      post :create, tobedo: { description: @tobedo.description, done: @tobedo.done, title: @tobedo.title }
    end

    assert_redirected_to tobedo_path(assigns(:tobedo))
  end

  test "should show tobedo" do
    get :show, id: @tobedo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tobedo
    assert_response :success
  end

  test "should update tobedo" do
    put :update, id: @tobedo, tobedo: { description: @tobedo.description, done: @tobedo.done, title: @tobedo.title }
    assert_redirected_to tobedo_path(assigns(:tobedo))
  end

  test "should destroy tobedo" do
    assert_difference('Tobedo.count', -1) do
      delete :destroy, id: @tobedo
    end

    assert_redirected_to tobedos_path
  end
end
