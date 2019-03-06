class CreatePedidoDetalles < ActiveRecord::Migration[5.2]
  def change
    create_table :pedido_detalles do |t|
      t.integer :id_pedido
      t.string :id_prod_serv
      t.text :descripcion
      t.float :precio_unitario
      t.integer :cantidad
      t.integer :descuento

      t.timestamps
    end
  end
end
