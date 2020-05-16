# C#

* Sucesor de Windows Forms
* WPF es una API perteneciente al framework.NET para crear interfaces de usuario bajo Windows

## Conección con SQL Server

1. Abrir Microsoft SQL Server Management Studio

2. Crear una nueva base de datos, click derecho en Database > New Database

3. Colocar un nombre y click en Aceptar.

<p align="center">
	<img src="images/create_database_sqlserver.PNG">
</p>

4. Crear tablas, click derecho en _Tables_ y _New Table._

<p align="center">
	<img src="images/create_new_table.PNG" >
</p>

5. Ingresar las nuevas columnas y tipos de datos, luego guardar la tabla.

<p align="center">
	<img src="images/crear_tabla.PNG">
</p>

6. Crear una nueva tabla de productos.

<p align="center">
	<img src="images/crear_tabla_producto.PNG">
</p>

7. Crear un nuevo proyecto en Visual Studio

<p align="center">
	<img src="images/create_project_visual.PNG">
</p>

8. Agregar una conexión, _Ver > Explorador_ de Servidores. Luego, click derecho en _conexiones de datos > Agregar conexiones_ y dar click en _Continuar_.

<p align="center">
	<img src="images/agregar_conexion.PNG">
</p>

9. En nombre del servidor colocar un punto **.** para conectarse con un servidor local. Desplegar la lista para seleccionar el nombre de la base de datos y escoger la creada en SqlServer, _Administracion_.

<p align="center">
	<img src="images/agregar_administracion.PNG">
</p>

10. Click derecho en la base de datos creada y seleccionar _propiedades_.

<p align="center">
	<img src="images/propiedades_database.PNG">
</p>

11. Copiar la cadena de conexion.

<p align="center">
	<img src="images/cadena_conexion.PNG">
</p>

12. En el MainWindows.xaml.cs import el SqlClient y crear la conexión dentro de un botón creado en el Form. Además, usar la cadena de conexión copiada en el anterior paso como se indica a continuación.

```c#
using System.Data.SqlClient;

public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

private void btnIngresar_Click(object sender, RoutedEventArgs e)
        {

            //cadena de conexion
            String conection_database = "Data Source=.;Initial Catalog=Administración;Integrated Security=True";
            //ingresar la cadena de conexión
            SqlConnection connection = new SqlConnection(conection_database);
        }

...
```

13. Posterior a la creacción del objeto _SqlConnection_ establecer conexión con:

```c#
 try
            {
                connection.Open();
                MessageBox.Show("Conexión exitosa a la base de datos");
            }
            catch (Exception err)
            {
                MessageBox.Show("Error de conexión a la base de datos: " + err.Message);
            }
```

14. Ir a _explorador de soluciones_ dar click derecho en el proyecto y luego a compilar. Si no existen errores dar a iniciar.

<p align="center">
	<img src="images/explorador_soluciones.PNG">
</p>

15. Se observa el formulario y al dar click en _Ingresar_ se observa el mensaje de una correcta conexión con la base de datos de _SqlServer._

<p align="center">
	<img src="images/iniciar_formulario.PNG">
</p>
</br>
<p align="center">
	<img src="images/conexion_correcta.PNG">
</p>
