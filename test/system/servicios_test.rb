require "application_system_test_case"

class ServiciosTest < ApplicationSystemTestCase
  setup do
    @servicio = servicios(:one)
  end

  test "visiting the index" do
    visit servicios_url
    assert_selector "h1", text: "Servicios"
  end

  test "creating a Servicio" do
    visit servicios_url
    click_on "New Servicio"

    fill_in "Descripcion", with: @servicio.descripcion
    fill_in "Duracion", with: @servicio.duracion
    fill_in "Estado compra", with: @servicio.estado_compra
    fill_in "Estado venta", with: @servicio.estado_venta
    fill_in "Etiqueta servicio", with: @servicio.etiqueta_servicio
    fill_in "Id servicio", with: @servicio.id_servicio
    fill_in "Precio venta", with: @servicio.precio_venta
    fill_in "Precio venta min", with: @servicio.precio_venta_min
    click_on "Create Servicio"

    assert_text "Servicio was successfully created"
    click_on "Back"
  end

  test "updating a Servicio" do
    visit servicios_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @servicio.descripcion
    fill_in "Duracion", with: @servicio.duracion
    fill_in "Estado compra", with: @servicio.estado_compra
    fill_in "Estado venta", with: @servicio.estado_venta
    fill_in "Etiqueta servicio", with: @servicio.etiqueta_servicio
    fill_in "Id servicio", with: @servicio.id_servicio
    fill_in "Precio venta", with: @servicio.precio_venta
    fill_in "Precio venta min", with: @servicio.precio_venta_min
    click_on "Update Servicio"

    assert_text "Servicio was successfully updated"
    click_on "Back"
  end

  test "destroying a Servicio" do
    visit servicios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servicio was successfully destroyed"
  end
end
