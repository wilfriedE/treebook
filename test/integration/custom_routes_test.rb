require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "the /login takes me to login page" do
  get '/login'
  assert_response :success
  end

  test "the /logout takes me to login page" do
  get '/logout'
  assert_response :redirect
  assert_redirect_to '/'
  end
  
  test "the /register path works as well" do
  	get '/register'
  	assert_response :success
  end
end
