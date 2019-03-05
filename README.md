# LEER >:V

# Equipo 1

1. Crear el modelado de la base de datos (Campos, tablas, relaciones, etc.)
2. Generar los Scaffolds de las tablas EXCEPTO ORDENES.

# Equipo 2

1. De la tabla Ordenes generar una vista que muestre todas las ordenes en existencia.
2 En este "listado" de ordenes se tiene que poder dar clic a una orden y esta tiene que llevar a una nueva pagina donde se muestren los detalles de esa orden en especifico que se encuentran en la Tabla Orden_detalles.


# Equipo 3

1. En la misma pagina donde se muestra el listado de ordenes, agregar un boton que diga "Crear orden" esta debe dirigir a una nueva pagina que:
 1.1 Sea un formulario con los campos necesarios para crear una nueva orden. (Debe tener un campo para el nombre del cliente)
 1.2 En el campo del Cliente debe ser un checlist con todos los clientes que estan registrados.
2. Guardar la orden y redirigir al usuario a la vista del listado de Ordenes.

# Equipo 4

1. En la vista de ver a todos los clientes (Se genero en el scaffold):
1.1 Agregar en cada fila del cliente una opcion que diga "Ver ordenes"
2. Esta opcion debe dirigir a una nueva pagina donde se mostrara las ordenes que ha generado ese cliente.
3. Asi mismo al darle clic a una orden en especifico debe llevar a una nueva pagina donde se muestren los detalles de esa orden que se encuentran en Orden_detalles (Esto se hace dirigiendose al metodo que haya realizado el equipo 2 en el punto 2) 

# Equipo 5

1. En la vista que muestra los detalles de las ordenes (Que es una vista usada por el equipo 2 y 4), generar un boton que diga "Generar Formato"
1.1 Este boton asignarle un id que sea el id de la orden(ej. <button type="button" id="<%= @orden_id %>">Generar formato </button>
2. Al darle clic debe generar un formato PDF de esa Orden en la que se encuentra.
