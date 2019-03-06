class CreateAlmacens < ActiveRecord::Migration[5.2]
  def change
    create_table :almacens do |t|
      t.integer :id_almacen
      t.string :nombre_almacen
      t.text :descripcion
      t.string :direccion
      t.integer :codigo_postal
      t.string :ciudad
      t.string :estado
      t.string :pais
      t.string :cls

      t.timestamps
    end
  end
end
