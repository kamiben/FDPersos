require 'test_helper'

class PersosControllerTest < ActionController::TestCase
  setup do
    @perso = persos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perso" do
    assert_difference('Perso.count') do
      post :create, :perso => @perso.attributes
    end

    assert_redirected_to perso_path(assigns(:perso))
  end

  test "should show perso" do
    get :show, :id => @perso.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @perso.to_param
    assert_response :success
  end

  test "should update perso" do
    put :update, :id => @perso.to_param, :perso => @perso.attributes
    assert_redirected_to perso_path(assigns(:perso))
  end

  test "should destroy perso" do
    assert_difference('Perso.count', -1) do
      delete :destroy, :id => @perso.to_param
    end

    assert_redirected_to persos_path
  end
end
