require 'test_helper'

class GuestGroupsControllerTest < ActionController::TestCase
  setup do
    @guest_group = guest_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guest_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest_group" do
    assert_difference('GuestGroup.count') do
      post :create, guest_group: { email: @guest_group.email, full_name: @guest_group.full_name, kids: @guest_group.kids, plus_one: @guest_group.plus_one }
    end

    assert_redirected_to guest_group_path(assigns(:guest_group))
  end

  test "should show guest_group" do
    get :show, id: @guest_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest_group
    assert_response :success
  end

  test "should update guest_group" do
    put :update, id: @guest_group, guest_group: { email: @guest_group.email, full_name: @guest_group.full_name, kids: @guest_group.kids, plus_one: @guest_group.plus_one }
    assert_redirected_to guest_group_path(assigns(:guest_group))
  end

  test "should destroy guest_group" do
    assert_difference('GuestGroup.count', -1) do
      delete :destroy, id: @guest_group
    end

    assert_redirected_to guest_groups_path
  end
end
