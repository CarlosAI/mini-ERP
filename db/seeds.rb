# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pedido.destroy_all
Pedido.create!([
    {
        tipo_pedido: "Mercancía",
        fecha: "02-10-2019",
        validez: 1,
        condicion_pago: "A la entrega",
        forma_pago: "Efectivo",
        metodo_envio: "Paquetería",
        fecha_entrega: "10-10-2019",
        id_tercero: 1
    },
    {
        tipo_pedido: "Mercancía2",
        fecha: "12-08-2019",
        validez: 1,
        condicion_pago: "50/50",
        forma_pago: "Banco",
        metodo_envio: "Correo",
        fecha_entrega: "20-08-2019",
        id_tercero: 2
    },
    {
        tipo_pedido: "Mercancía3",
        fecha: "18-11-2019",
        validez: 3,
        condicion_pago: "30 días",
        forma_pago: "Efectivo",
        metodo_envio: "Paquetería3",
        fecha_entrega: "05-01-2020",
        id_tercero: 3
    }
])  
p "Creados #{Pedido.count} pedidos"