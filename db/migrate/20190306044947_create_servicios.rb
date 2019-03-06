class CreateServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :servicios do |t|
      t.string :id_servicio
      t.string :etiqueta_servicio
      t.string :estado_venta
      t.string :estado_compra
      t.text :descripcion
      t.integer :duracion
      t.float :precio_venta
      t.float :precio_venta_min

      t.timestamps
    end
  end
end
