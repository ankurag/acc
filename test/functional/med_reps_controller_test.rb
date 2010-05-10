require 'test_helper'

class MedRepsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:med_reps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create med_rep" do
    assert_difference('MedRep.count') do
      post :create, :med_rep => { }
    end

    assert_redirected_to med_rep_path(assigns(:med_rep))
  end

  test "should show med_rep" do
    get :show, :id => med_reps(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => med_reps(:one).to_param
    assert_response :success
  end

  test "should update med_rep" do
    put :update, :id => med_reps(:one).to_param, :med_rep => { }
    assert_redirected_to med_rep_path(assigns(:med_rep))
  end

  test "should destroy med_rep" do
    assert_difference('MedRep.count', -1) do
      delete :destroy, :id => med_reps(:one).to_param
    end

    assert_redirected_to med_reps_path
  end
end
