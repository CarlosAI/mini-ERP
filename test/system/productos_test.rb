require "application_system_test_case"

class ProductosTest < ApplicationSystemTestCase
  setup do
    @producto = productos(:one)
  end

  test "visiting the index" do
    visit productos_url
    assert_selector "h1", text: "Productos"
  end

  test "creating a Producto" do
    visit productos_url
    click_on "New Producto"

    fill_in "Alto", with: @producto.alto
    fill_in "Cantidad", with: @producto.cantidad
    fill_in "Descripcion", with: @producto.descripcion
    fill_in "Estado compras", with: @producto.estado_compras
    fill_in "Estado ventas", with: @producto.estado_ventas
    fill_in "Etiqueta producto", with: @producto.etiqueta_producto
    fill_in "Id almacen", with: @producto.id_almacen
    fill_in "Id producto", with: @producto.id_producto
    fill_in "Largo", with: @producto.largo
    fill_in "Longitud", with: @producto.longitud
    fill_in "Naturaleza", with: @producto.naturaleza
    fill_in "Peso", with: @producto.peso
    fill_in "Precio venta", with: @producto.precio_venta
    fill_in "Precio venta minimo", with: @producto.precio_venta_minimo
    fill_in "Stock deseado", with: @producto.stock_deseado
    fill_in "Stock limite", with: @producto.stock_limite
    fill_in "Superficie", with: @producto.superficie
    fill_in "Volumen", with: @producto.volumen
    click_on "Create Producto"

    assert_text "Producto was successfully created"
    click_on "Back"
  end

  test "updating a Producto" do
    visit productos_url
    click_on "Edit", match: :first

    fill_in "Alto", with: @producto.alto
    fill_in "Cantidad", with: @producto.cantidad
    fill_in "Descripcion", with: @producto.descripcion
    fill_in "Estado compras", with: @producto.estado_compras
    fill_in "Estado ventas", with: @producto.estado_ventas
    fill_in "Etiqueta producto", with: @producto.etiqueta_producto
    fill_in "Id almacen", with: @producto.id_almacen
    fill_in "Id producto", with: @producto.id_producto
    fill_in "Largo", with: @producto.largo
    fill_in "Longitud", with: @producto.longitud
    fill_in "Naturaleza", with: @producto.naturaleza
    fill_in "Peso", with: @producto.peso
    fill_in "Precio venta", with: @producto.precio_venta
    fill_in "Precio venta minimo", with: @producto.precio_venta_minimo
    fill_in "Stock deseado", with: @producto.stock_deseado
    fill_in "Stock limite", with: @producto.stock_limite
    fill_in "Superficie", with: @producto.superficie
    fill_in "Volumen", with: @producto.volumen
    click_on "Update Producto"

    assert_text "Producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Producto" do
    visit productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Producto was successfully destroyed"
  end
end
