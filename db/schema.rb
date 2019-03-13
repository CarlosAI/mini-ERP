# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_03_06_191949) do
=======

ActiveRecord::Schema.define(version: 2019_03_06_191949) do

>>>>>>> 85322d13a8f02cf9ec426b746275a515a69f87fb

  create_table "almacens", force: :cascade do |t|
    t.integer "id_almacen"
    t.string "nombre_almacen"
    t.text "descripcion"
    t.string "direccion"
    t.integer "codigo_postal"
    t.string "ciudad"
    t.string "estado"
    t.string "pais"
    t.string "cls"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contactos", force: :cascade do |t|
    t.string "id_contacto"
    t.string "apellido"
    t.string "nombre"
    t.string "id_tercero"
    t.string "titulo"
    t.string "puesto_trabajo"
    t.string "direccion"
    t.string "codigo_postal"
    t.string "estado"
    t.string "pais"
    t.string "telefono_trabajo"
    t.string "telefono_celular"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======

>>>>>>> 85322d13a8f02cf9ec426b746275a515a69f87fb
  create_table "pedidos", force: :cascade do |t|
    t.string "id_pedido"
    t.string "tipo_pedido"
    t.date "fecha"
    t.integer "validez"
    t.string "condicion_pago"
    t.string "forma_pago"
    t.string "metodo_envio"
    t.date "fecha_entrega"
    t.string "id_tercero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======

>>>>>>> 85322d13a8f02cf9ec426b746275a515a69f87fb
  create_table "productos", force: :cascade do |t|
    t.string "id_producto"
    t.string "etiqueta_producto"
    t.string "estado_ventas"
    t.string "estado_compras"
    t.string "descripcion"
    t.integer "stock_limite"
    t.integer "stock_deseado"
    t.string "naturaleza"
    t.integer "peso"
    t.integer "longitud"
    t.integer "largo"
    t.integer "alto"
    t.integer "superficie"
    t.integer "volumen"
    t.float "precio_venta"
    t.float "precio_venta_minimo"
    t.integer "cantidad"
    t.integer "id_almacen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string "id_servicio"
    t.string "etiqueta_servicio"
    t.string "estado_venta"
    t.string "estado_compra"
    t.text "descripcion"
    t.integer "duracion"
    t.float "precio_venta"
    t.float "precio_venta_min"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terceros", force: :cascade do |t|
    t.string "id_tercero"
    t.string "nombre_tercero"
    t.string "cliente"
    t.string "proveedor"
    t.string "direccion"
    t.string "codigo_postal"
    t.string "ciudad"
    t.string "estado"
    t.string "pais"
    t.string "email"
    t.string "sitio_web"
    t.string "telefono"
    t.string "rfc"
    t.string "forma_juridica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
