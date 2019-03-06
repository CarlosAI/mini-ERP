class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :id_producto
      t.string :etiqueta_producto
      t.string :estado_ventas
      t.string :estado_compras
      t.string :descripcion
      t.integer :stock_limite
      t.integer :stock_deseado
      t.string :naturaleza
      t.integer :peso
      t.integer :longitud
      t.integer :largo
      t.integer :alto
      t.integer :superficie
      t.integer :volumen
      t.float :precio_venta
      t.float :precio_venta_minimo
      t.integer :cantidad
      t.integer :id_almacen

      t.timestamps
    end
  end
end
