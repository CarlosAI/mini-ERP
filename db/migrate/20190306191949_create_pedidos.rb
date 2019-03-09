class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :id_pedido
      t.string :tipo_pedido
      t.date :fecha
      t.integer :validez
      t.string :condicion_pago
      t.string :forma_pago
      t.string :metodo_envio
      t.date :fecha_entrega
      t.string :id_tercero

      t.timestamps
    end
  end
end
