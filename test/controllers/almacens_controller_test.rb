require 'test_helper'

class AlmacensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @almacen = almacens(:one)
  end

  test "should get index" do
    get almacens_url
    assert_response :success
  end

  test "should get new" do
    get new_almacen_url
    assert_response :success
  end

  test "should create almacen" do
    assert_difference('Almacen.count') do
      post almacens_url, params: { almacen: { ciudad: @almacen.ciudad, cls: @almacen.cls, codigo_postal: @almacen.codigo_postal, descripcion: @almacen.descripcion, direccion: @almacen.direccion, estado: @almacen.estado, id_almacen: @almacen.id_almacen, nombre_almacen: @almacen.nombre_almacen, pais: @almacen.pais } }
    end

    assert_redirected_to almacen_url(Almacen.last)
  end

  test "should show almacen" do
    get almacen_url(@almacen)
    assert_response :success
  end

  test "should get edit" do
    get edit_almacen_url(@almacen)
    assert_response :success
  end

  test "should update almacen" do
    patch almacen_url(@almacen), params: { almacen: { ciudad: @almacen.ciudad, cls: @almacen.cls, codigo_postal: @almacen.codigo_postal, descripcion: @almacen.descripcion, direccion: @almacen.direccion, estado: @almacen.estado, id_almacen: @almacen.id_almacen, nombre_almacen: @almacen.nombre_almacen, pais: @almacen.pais } }
    assert_redirected_to almacen_url(@almacen)
  end

  test "should destroy almacen" do
    assert_difference('Almacen.count', -1) do
      delete almacen_url(@almacen)
    end

    assert_redirected_to almacens_url
  end
end
