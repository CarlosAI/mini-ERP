json.extract! contacto, :id, :id_contacto, :apellido, :nombre, :id_tercero, :titulo, :puesto_trabajo, :direccion, :codigo_postal, :estado, :pais, :telefono_trabajo, :telefono_celular, :email, :created_at, :updated_at
json.url contacto_url(contacto, format: :json)
