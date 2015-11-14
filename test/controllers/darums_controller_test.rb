require 'test_helper'

class DarumsControllerTest < ActionController::TestCase
  setup do
    @darum = darums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:darums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create darum" do
    assert_difference('Darum.count') do
      post :create, darum: { csv_id: @darum.csv_id, user_id: @darum.user_id }
    end

    assert_redirected_to darum_path(assigns(:darum))
  end

  test "should show darum" do
    get :show, id: @darum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @darum
    assert_response :success
  end

  test "should update darum" do
    patch :update, id: @darum, darum: { csv_id: @darum.csv_id, user_id: @darum.user_id }
    assert_redirected_to darum_path(assigns(:darum))
  end

  test "should destroy darum" do
    assert_difference('Darum.count', -1) do
      delete :destroy, id: @darum
    end

    assert_redirected_to darums_path
  end
end
