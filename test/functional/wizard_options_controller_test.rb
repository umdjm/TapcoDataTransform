require 'test_helper'

class WizardOptionsControllerTest < ActionController::TestCase
  setup do
    @wizard_option = wizard_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wizard_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wizard_option" do
    assert_difference('WizardOption.count') do
      post :create, wizard_option: {  }
    end

    assert_redirected_to wizard_option_path(assigns(:wizard_option))
  end

  test "should show wizard_option" do
    get :show, id: @wizard_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wizard_option
    assert_response :success
  end

  test "should update wizard_option" do
    put :update, id: @wizard_option, wizard_option: {  }
    assert_redirected_to wizard_option_path(assigns(:wizard_option))
  end

  test "should destroy wizard_option" do
    assert_difference('WizardOption.count', -1) do
      delete :destroy, id: @wizard_option
    end

    assert_redirected_to wizard_options_path
  end
end
