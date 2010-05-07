require 'test_helper'

class AccountGroupsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_group" do
    assert_difference('AccountGroup.count') do
      post :create, :account_group => { }
    end

    assert_redirected_to account_group_path(assigns(:account_group))
  end

  test "should show account_group" do
    get :show, :id => account_groups(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => account_groups(:one).to_param
    assert_response :success
  end

  test "should update account_group" do
    put :update, :id => account_groups(:one).to_param, :account_group => { }
    assert_redirected_to account_group_path(assigns(:account_group))
  end

  test "should destroy account_group" do
    assert_difference('AccountGroup.count', -1) do
      delete :destroy, :id => account_groups(:one).to_param
    end

    assert_redirected_to account_groups_path
  end
end
