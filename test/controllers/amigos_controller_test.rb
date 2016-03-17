require 'test_helper'

class AmigosControllerTest < ActionController::TestCase
  setup do
    @amigo = amigos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amigos)
  end

  test "should create amigo" do
    assert_difference('Amigo.count') do
      post :create, amigo: {  }
    end

    assert_response 201
  end

  test "should show amigo" do
    get :show, id: @amigo
    assert_response :success
  end

  test "should update amigo" do
    put :update, id: @amigo, amigo: {  }
    assert_response 204
  end

  test "should destroy amigo" do
    assert_difference('Amigo.count', -1) do
      delete :destroy, id: @amigo
    end

    assert_response 204
  end
end
