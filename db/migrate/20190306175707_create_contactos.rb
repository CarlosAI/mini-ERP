class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :id_contacto
      t.string :apellido
      t.string :nombre
      t.string :id_tercero
      t.string :titulo
      t.string :puesto_trabajo
      t.string :direccion
      t.string :codigo_postal
      t.string :estado
      t.string :pais
      t.string :telefono_trabajo
      t.string :telefono_celular
      t.string :email

      t.timestamps
    end
  end
end
