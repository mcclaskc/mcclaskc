require 'test_helper'

class TournynamesControllerTest < ActionController::TestCase
  setup do
    @tournyname = tournynames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tournynames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tournyname" do
    assert_difference('Tournyname.count') do
      post :create, :tournyname => {  }
    end

    assert_redirected_to tournyname_path(assigns(:tournyname))
  end

  test "should show tournyname" do
    get :show, :id => @tournyname
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tournyname
    assert_response :success
  end

  test "should update tournyname" do
    put :update, :id => @tournyname, :tournyname => {  }
    assert_redirected_to tournyname_path(assigns(:tournyname))
  end

  test "should destroy tournyname" do
    assert_difference('Tournyname.count', -1) do
      delete :destroy, :id => @tournyname
    end

    assert_redirected_to tournynames_path
  end
end
