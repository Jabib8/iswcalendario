require 'test_helper'

class AulaLabsControllerTest < ActionController::TestCase
  setup do
    @aula_lab = aula_labs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aula_labs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aula_lab" do
    assert_difference('AulaLab.count') do
      post :create, aula_lab: { descripcion: @aula_lab.descripcion, observacion: @aula_lab.observacion, personas: @aula_lab.personas, recintos: @aula_lab.recintos }
    end

    assert_redirected_to aula_lab_path(assigns(:aula_lab))
  end

  test "should show aula_lab" do
    get :show, id: @aula_lab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aula_lab
    assert_response :success
  end

  test "should update aula_lab" do
    patch :update, id: @aula_lab, aula_lab: { descripcion: @aula_lab.descripcion, observacion: @aula_lab.observacion, personas: @aula_lab.personas, recintos: @aula_lab.recintos }
    assert_redirected_to aula_lab_path(assigns(:aula_lab))
  end

  test "should destroy aula_lab" do
    assert_difference('AulaLab.count', -1) do
      delete :destroy, id: @aula_lab
    end

    assert_redirected_to aula_labs_path
  end
end
