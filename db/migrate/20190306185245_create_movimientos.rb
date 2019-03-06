class CreateMovimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :movimientos do |t|
      t.integer :id_movimiento
      t.date :fecha
      t.string :etiqueta_producto
      t.string :tipo_movimiento
      t.integer :cantidad
      t.string :id_almacen
      t.string :id_producto

      t.timestamps
    end
  end
end
