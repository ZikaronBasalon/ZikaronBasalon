require 'test_helper'

class WitnessesControllerTest < ActionController::TestCase
  setup do
    @witness = witnesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:witnesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create witness" do
    assert_difference('Witness.count') do
      post :create, witness: { create: @witness.create, edit: @witness.edit, index: @witness.index, new: @witness.new, update: @witness.update }
    end

    assert_redirected_to witness_path(assigns(:witness))
  end

  test "should show witness" do
    get :show, id: @witness
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @witness
    assert_response :success
  end

  test "should update witness" do
    put :update, id: @witness, witness: { create: @witness.create, edit: @witness.edit, index: @witness.index, new: @witness.new, update: @witness.update }
    assert_redirected_to witness_path(assigns(:witness))
  end

  test "should destroy witness" do
    assert_difference('Witness.count', -1) do
      delete :destroy, id: @witness
    end

    assert_redirected_to witnesses_path
  end
end
