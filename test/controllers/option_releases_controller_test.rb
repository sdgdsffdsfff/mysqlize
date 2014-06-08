require 'test_helper'

class OptionReleasesControllerTest < ActionController::TestCase
  setup do
    @option_release = option_releases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:option_releases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create option_release" do
    assert_difference('OptionRelease.count') do
      post :create, option_release: { deprecated: @option_release.deprecated, introduced: @option_release.introduced, option_id: @option_release.option_id, release_id: @option_release.release_id }
    end

    assert_redirected_to option_release_path(assigns(:option_release))
  end

  test "should show option_release" do
    get :show, id: @option_release
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @option_release
    assert_response :success
  end

  test "should update option_release" do
    patch :update, id: @option_release, option_release: { deprecated: @option_release.deprecated, introduced: @option_release.introduced, option_id: @option_release.option_id, release_id: @option_release.release_id }
    assert_redirected_to option_release_path(assigns(:option_release))
  end

  test "should destroy option_release" do
    assert_difference('OptionRelease.count', -1) do
      delete :destroy, id: @option_release
    end

    assert_redirected_to option_releases_path
  end
end
