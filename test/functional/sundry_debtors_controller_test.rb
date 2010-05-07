require 'test_helper'

class SundryDebtorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sundry_debtors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sundry_debtor" do
    assert_difference('SundryDebtor.count') do
      post :create, :sundry_debtor => { }
    end

    assert_redirected_to sundry_debtor_path(assigns(:sundry_debtor))
  end

  test "should show sundry_debtor" do
    get :show, :id => sundry_debtors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sundry_debtors(:one).to_param
    assert_response :success
  end

  test "should update sundry_debtor" do
    put :update, :id => sundry_debtors(:one).to_param, :sundry_debtor => { }
    assert_redirected_to sundry_debtor_path(assigns(:sundry_debtor))
  end

  test "should destroy sundry_debtor" do
    assert_difference('SundryDebtor.count', -1) do
      delete :destroy, :id => sundry_debtors(:one).to_param
    end

    assert_redirected_to sundry_debtors_path
  end
end
