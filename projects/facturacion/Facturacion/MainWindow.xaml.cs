using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;

namespace Facturacion
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
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

            try
            {
                connection.Open();
                MessageBox.Show("Conexión exitosa a la base de datos");
            }
            catch (Exception err)
            {
                MessageBox.Show("Error de conexión a la base de datos: " + err.Message);
            }
            

        }


    }
}
