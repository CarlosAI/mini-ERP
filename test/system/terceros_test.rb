require "application_system_test_case"

class TercerosTest < ApplicationSystemTestCase
  setup do
    @tercero = terceros(:one)
  end

  test "visiting the index" do
    visit terceros_url
    assert_selector "h1", text: "Terceros"
  end

  test "creating a Tercero" do
    visit terceros_url
    click_on "New Tercero"

    fill_in "Ciudad", with: @tercero.ciudad
    fill_in "Cliente", with: @tercero.cliente
    fill_in "Codigo postal", with: @tercero.codigo_postal
    fill_in "Direccion", with: @tercero.direccion
    fill_in "Email", with: @tercero.email
    fill_in "Estado", with: @tercero.estado
    fill_in "Forma juridica", with: @tercero.forma_juridica
    fill_in "Id tercero", with: @tercero.id_tercero
    fill_in "Nombre tercero", with: @tercero.nombre_tercero
    fill_in "Pais", with: @tercero.pais
    fill_in "Proveedor", with: @tercero.proveedor
    fill_in "Rfc", with: @tercero.rfc
    fill_in "Sitio web", with: @tercero.sitio_web
    fill_in "Telefono", with: @tercero.telefono
    click_on "Create Tercero"

    assert_text "Tercero was successfully created"
    click_on "Back"
  end

  test "updating a Tercero" do
    visit terceros_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @tercero.ciudad
    fill_in "Cliente", with: @tercero.cliente
    fill_in "Codigo postal", with: @tercero.codigo_postal
    fill_in "Direccion", with: @tercero.direccion
    fill_in "Email", with: @tercero.email
    fill_in "Estado", with: @tercero.estado
    fill_in "Forma juridica", with: @tercero.forma_juridica
    fill_in "Id tercero", with: @tercero.id_tercero
    fill_in "Nombre tercero", with: @tercero.nombre_tercero
    fill_in "Pais", with: @tercero.pais
    fill_in "Proveedor", with: @tercero.proveedor
    fill_in "Rfc", with: @tercero.rfc
    fill_in "Sitio web", with: @tercero.sitio_web
    fill_in "Telefono", with: @tercero.telefono
    click_on "Update Tercero"

    assert_text "Tercero was successfully updated"
    click_on "Back"
  end

  test "destroying a Tercero" do
    visit terceros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tercero was successfully destroyed"
  end
end
