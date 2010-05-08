require 'test_helper'

class ZonalAreasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zonal_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zonal_area" do
    assert_difference('ZonalArea.count') do
      post :create, :zonal_area => { }
    end

    assert_redirected_to zonal_area_path(assigns(:zonal_area))
  end

  test "should show zonal_area" do
    get :show, :id => zonal_areas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => zonal_areas(:one).to_param
    assert_response :success
  end

  test "should update zonal_area" do
    put :update, :id => zonal_areas(:one).to_param, :zonal_area => { }
    assert_redirected_to zonal_area_path(assigns(:zonal_area))
  end

  test "should destroy zonal_area" do
    assert_difference('ZonalArea.count', -1) do
      delete :destroy, :id => zonal_areas(:one).to_param
    end

    assert_redirected_to zonal_areas_path
  end
end
