require 'test_helper'

class TelephonesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:telephones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create telephone" do
    assert_difference('Telephone.count') do
      post :create, :telephone => { }
    end

    assert_redirected_to telephone_path(assigns(:telephone))
  end

  test "should show telephone" do
    get :show, :id => telephones(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => telephones(:one).to_param
    assert_response :success
  end

  test "should update telephone" do
    put :update, :id => telephones(:one).to_param, :telephone => { }
    assert_redirected_to telephone_path(assigns(:telephone))
  end

  test "should destroy telephone" do
    assert_difference('Telephone.count', -1) do
      delete :destroy, :id => telephones(:one).to_param
    end

    assert_redirected_to telephones_path
  end
end
