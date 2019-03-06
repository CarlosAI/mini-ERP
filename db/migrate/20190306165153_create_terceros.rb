class CreateTerceros < ActiveRecord::Migration[5.2]
  def change
    create_table :terceros do |t|
      t.string :id_tercero
      t.string :nombre_tercero
      t.string :cliente
      t.string :proveedor
      t.string :direccion
      t.string :codigo_postal
      t.string :ciudad
      t.string :estado
      t.string :pais
      t.string :email
      t.string :sitio_web
      t.string :telefono
      t.string :rfc
      t.string :forma_juridica

      t.timestamps
    end
  end
end
