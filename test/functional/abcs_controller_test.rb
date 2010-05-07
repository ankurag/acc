require File.dirname(__FILE__) + '/../test_helper'

# make sure the secret for request forgery protection is set (views will
# explicitly use the form_authenticity_token method which will fail otherwise)
AbcsController.request_forgery_protection_options[:secret] = 'test_secret'

class AbcsControllerTest < ActionController::TestCase


  def test_should_get_index
    get :index
    assert_response :success
    get :index, :format => 'ext_json'
    assert_response :success
  end

  def test_should_create_abc
    assert_difference('Abc.count') do
      xhr :post, :create, :format => 'ext_json', :abc => { }
    end
    assert_response :success
  end

  def test_should_update_abc
    xhr :put, :update, :format => 'ext_json', :id => abcs(:one).id, :abc => { }
    assert_response :success
  end

  def test_should_destroy_abc
    assert_difference('Abc.count', -1) do
      xhr :delete, :destroy, :id => abcs(:one).id
    end
    assert_response :success
  end
end
