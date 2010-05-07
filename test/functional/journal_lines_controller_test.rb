require 'test_helper'

class JournalLinesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journal_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journal_line" do
    assert_difference('JournalLine.count') do
      post :create, :journal_line => { }
    end

    assert_redirected_to journal_line_path(assigns(:journal_line))
  end

  test "should show journal_line" do
    get :show, :id => journal_lines(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => journal_lines(:one).to_param
    assert_response :success
  end

  test "should update journal_line" do
    put :update, :id => journal_lines(:one).to_param, :journal_line => { }
    assert_redirected_to journal_line_path(assigns(:journal_line))
  end

  test "should destroy journal_line" do
    assert_difference('JournalLine.count', -1) do
      delete :destroy, :id => journal_lines(:one).to_param
    end

    assert_redirected_to journal_lines_path
  end
end
