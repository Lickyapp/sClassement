require 'test_helper'

class EmplacementsControllerTest < ActionController::TestCase
  setup do
    @emplacement = emplacements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emplacements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emplacement" do
    assert_difference('Emplacement.count') do
      post :create, emplacement: { nom: @emplacement.nom, salle_id: @emplacement.salle_id }
    end

    assert_redirected_to emplacement_path(assigns(:emplacement))
  end

  test "should show emplacement" do
    get :show, id: @emplacement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emplacement
    assert_response :success
  end

  test "should update emplacement" do
    put :update, id: @emplacement, emplacement: { nom: @emplacement.nom, salle_id: @emplacement.salle_id }
    assert_redirected_to emplacement_path(assigns(:emplacement))
  end

  test "should destroy emplacement" do
    assert_difference('Emplacement.count', -1) do
      delete :destroy, id: @emplacement
    end

    assert_redirected_to emplacements_path
  end
end
