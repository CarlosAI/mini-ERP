json.extract! producto, :id, :id_producto, :etiqueta_producto, :estado_ventas, :estado_compras, :descripcion, :stock_limite, :stock_deseado, :naturaleza, :peso, :longitud, :largo, :alto, :superficie, :volumen, :precio_venta, :precio_venta_minimo, :cantidad, :id_almacen, :created_at, :updated_at
json.url producto_url(producto, format: :json)
