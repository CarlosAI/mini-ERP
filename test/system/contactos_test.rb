require "application_system_test_case"

class ContactosTest < ApplicationSystemTestCase
  setup do
    @contacto = contactos(:one)
  end

  test "visiting the index" do
    visit contactos_url
    assert_selector "h1", text: "Contactos"
  end

  test "creating a Contacto" do
    visit contactos_url
    click_on "New Contacto"

    fill_in "Apellido", with: @contacto.apellido
    fill_in "Codigo postal", with: @contacto.codigo_postal
    fill_in "Direccion", with: @contacto.direccion
    fill_in "Email", with: @contacto.email
    fill_in "Estado", with: @contacto.estado
    fill_in "Id contacto", with: @contacto.id_contacto
    fill_in "Id tercero", with: @contacto.id_tercero
    fill_in "Nombre", with: @contacto.nombre
    fill_in "Pais", with: @contacto.pais
    fill_in "Puesto trabajo", with: @contacto.puesto_trabajo
    fill_in "Telefono celular", with: @contacto.telefono_celular
    fill_in "Telefono trabajo", with: @contacto.telefono_trabajo
    fill_in "Titulo", with: @contacto.titulo
    click_on "Create Contacto"

    assert_text "Contacto was successfully created"
    click_on "Back"
  end

  test "updating a Contacto" do
    visit contactos_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @contacto.apellido
    fill_in "Codigo postal", with: @contacto.codigo_postal
    fill_in "Direccion", with: @contacto.direccion
    fill_in "Email", with: @contacto.email
    fill_in "Estado", with: @contacto.estado
    fill_in "Id contacto", with: @contacto.id_contacto
    fill_in "Id tercero", with: @contacto.id_tercero
    fill_in "Nombre", with: @contacto.nombre
    fill_in "Pais", with: @contacto.pais
    fill_in "Puesto trabajo", with: @contacto.puesto_trabajo
    fill_in "Telefono celular", with: @contacto.telefono_celular
    fill_in "Telefono trabajo", with: @contacto.telefono_trabajo
    fill_in "Titulo", with: @contacto.titulo
    click_on "Update Contacto"

    assert_text "Contacto was successfully updated"
    click_on "Back"
  end

  test "destroying a Contacto" do
    visit contactos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contacto was successfully destroyed"
  end
end
