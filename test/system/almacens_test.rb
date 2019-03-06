require "application_system_test_case"

class AlmacensTest < ApplicationSystemTestCase
  setup do
    @almacen = almacens(:one)
  end

  test "visiting the index" do
    visit almacens_url
    assert_selector "h1", text: "Almacens"
  end

  test "creating a Almacen" do
    visit almacens_url
    click_on "New Almacen"

    fill_in "Ciudad", with: @almacen.ciudad
    fill_in "Cls", with: @almacen.cls
    fill_in "Codigo postal", with: @almacen.codigo_postal
    fill_in "Descripcion", with: @almacen.descripcion
    fill_in "Direccion", with: @almacen.direccion
    fill_in "Estado", with: @almacen.estado
    fill_in "Id almacen", with: @almacen.id_almacen
    fill_in "Nombre almacen", with: @almacen.nombre_almacen
    fill_in "Pais", with: @almacen.pais
    click_on "Create Almacen"

    assert_text "Almacen was successfully created"
    click_on "Back"
  end

  test "updating a Almacen" do
    visit almacens_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @almacen.ciudad
    fill_in "Cls", with: @almacen.cls
    fill_in "Codigo postal", with: @almacen.codigo_postal
    fill_in "Descripcion", with: @almacen.descripcion
    fill_in "Direccion", with: @almacen.direccion
    fill_in "Estado", with: @almacen.estado
    fill_in "Id almacen", with: @almacen.id_almacen
    fill_in "Nombre almacen", with: @almacen.nombre_almacen
    fill_in "Pais", with: @almacen.pais
    click_on "Update Almacen"

    assert_text "Almacen was successfully updated"
    click_on "Back"
  end

  test "destroying a Almacen" do
    visit almacens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Almacen was successfully destroyed"
  end
end
