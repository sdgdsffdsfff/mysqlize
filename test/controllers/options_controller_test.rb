require 'test_helper'

class OptionsControllerTest < ActionController::TestCase
  setup do
    @option = options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create option" do
    assert_difference('Option.count') do
      post :create, option: { description: @option.description, long_option: @option.long_option, name: @option.name, option_file: @option.option_file, short_option: @option.short_option, short_option_can_be_strung: @option.short_option_can_be_strung, status: @option.status, tool_id: @option.tool_id }
    end

    assert_redirected_to option_path(assigns(:option))
  end

  test "should show option" do
    get :show, id: @option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @option
    assert_response :success
  end

  test "should update option" do
    patch :update, id: @option, option: { description: @option.description, long_option: @option.long_option, name: @option.name, option_file: @option.option_file, short_option: @option.short_option, short_option_can_be_strung: @option.short_option_can_be_strung, status: @option.status, tool_id: @option.tool_id }
    assert_redirected_to option_path(assigns(:option))
  end

  test "should destroy option" do
    assert_difference('Option.count', -1) do
      delete :destroy, id: @option
    end

    assert_redirected_to options_path
  end
end
