require 'test_helper'

class ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get productos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_url
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post productos_url, params: { producto: { alto: @producto.alto, cantidad: @producto.cantidad, descripcion: @producto.descripcion, estado_compras: @producto.estado_compras, estado_ventas: @producto.estado_ventas, etiqueta_producto: @producto.etiqueta_producto, id_almacen: @producto.id_almacen, id_producto: @producto.id_producto, largo: @producto.largo, longitud: @producto.longitud, naturaleza: @producto.naturaleza, peso: @producto.peso, precio_venta: @producto.precio_venta, precio_venta_minimo: @producto.precio_venta_minimo, stock_deseado: @producto.stock_deseado, stock_limite: @producto.stock_limite, superficie: @producto.superficie, volumen: @producto.volumen } }
    end

    assert_redirected_to producto_url(Producto.last)
  end

  test "should show producto" do
    get producto_url(@producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_url(@producto)
    assert_response :success
  end

  test "should update producto" do
    patch producto_url(@producto), params: { producto: { alto: @producto.alto, cantidad: @producto.cantidad, descripcion: @producto.descripcion, estado_compras: @producto.estado_compras, estado_ventas: @producto.estado_ventas, etiqueta_producto: @producto.etiqueta_producto, id_almacen: @producto.id_almacen, id_producto: @producto.id_producto, largo: @producto.largo, longitud: @producto.longitud, naturaleza: @producto.naturaleza, peso: @producto.peso, precio_venta: @producto.precio_venta, precio_venta_minimo: @producto.precio_venta_minimo, stock_deseado: @producto.stock_deseado, stock_limite: @producto.stock_limite, superficie: @producto.superficie, volumen: @producto.volumen } }
    assert_redirected_to producto_url(@producto)
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete producto_url(@producto)
    end

    assert_redirected_to productos_url
  end
end
