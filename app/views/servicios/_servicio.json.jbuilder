json.extract! servicio, :id, :id_servicio, :etiqueta_servicio, :estado_venta, :estado_compra, :descripcion, :duracion, :precio_venta, :precio_venta_min, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
