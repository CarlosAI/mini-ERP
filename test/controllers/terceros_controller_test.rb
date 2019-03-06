require 'test_helper'

class TercerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tercero = terceros(:one)
  end

  test "should get index" do
    get terceros_url
    assert_response :success
  end

  test "should get new" do
    get new_tercero_url
    assert_response :success
  end

  test "should create tercero" do
    assert_difference('Tercero.count') do
      post terceros_url, params: { tercero: { ciudad: @tercero.ciudad, cliente: @tercero.cliente, codigo_postal: @tercero.codigo_postal, direccion: @tercero.direccion, email: @tercero.email, estado: @tercero.estado, forma_juridica: @tercero.forma_juridica, id_tercero: @tercero.id_tercero, nombre_tercero: @tercero.nombre_tercero, pais: @tercero.pais, proveedor: @tercero.proveedor, rfc: @tercero.rfc, sitio_web: @tercero.sitio_web, telefono: @tercero.telefono } }
    end

    assert_redirected_to tercero_url(Tercero.last)
  end

  test "should show tercero" do
    get tercero_url(@tercero)
    assert_response :success
  end

  test "should get edit" do
    get edit_tercero_url(@tercero)
    assert_response :success
  end

  test "should update tercero" do
    patch tercero_url(@tercero), params: { tercero: { ciudad: @tercero.ciudad, cliente: @tercero.cliente, codigo_postal: @tercero.codigo_postal, direccion: @tercero.direccion, email: @tercero.email, estado: @tercero.estado, forma_juridica: @tercero.forma_juridica, id_tercero: @tercero.id_tercero, nombre_tercero: @tercero.nombre_tercero, pais: @tercero.pais, proveedor: @tercero.proveedor, rfc: @tercero.rfc, sitio_web: @tercero.sitio_web, telefono: @tercero.telefono } }
    assert_redirected_to tercero_url(@tercero)
  end

  test "should destroy tercero" do
    assert_difference('Tercero.count', -1) do
      delete tercero_url(@tercero)
    end

    assert_redirected_to terceros_url
  end
end
