require 'test_helper'

class EspecimenControllerTest < ActionController::TestCase
  setup do
    @especiman = especimen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especimen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especiman" do
    assert_difference('Especiman.count') do
      post :create, especiman: { clase: @especiman.clase, dominio: @especiman.dominio, especie: @especiman.especie, extension: @especiman.extension, familia: @especiman.familia, filo: @especiman.filo, genero: @especiman.genero, observaciones: @especiman.observaciones, orden: @especiman.orden }
    end

    assert_redirected_to especiman_path(assigns(:especiman))
  end

  test "should show especiman" do
    get :show, id: @especiman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @especiman
    assert_response :success
  end

  test "should update especiman" do
    patch :update, id: @especiman, especiman: { clase: @especiman.clase, dominio: @especiman.dominio, especie: @especiman.especie, extension: @especiman.extension, familia: @especiman.familia, filo: @especiman.filo, genero: @especiman.genero, observaciones: @especiman.observaciones, orden: @especiman.orden }
    assert_redirected_to especiman_path(assigns(:especiman))
  end

  test "should destroy especiman" do
    assert_difference('Especiman.count', -1) do
      delete :destroy, id: @especiman
    end

    assert_redirected_to especimen_path
  end
end
