using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
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
using TaskManager.Model;
using TaskManager.Repositoryes;

namespace TaskManager
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly ProcessRepository _repository;
        public ObservableCollection<ProcessInfo> Processes { get; set; }
        public MainWindow()
        {
            InitializeComponent();
            _repository = new ProcessRepository();
            Processes = new ObservableCollection<ProcessInfo>();
            Loaded += MainWindow_Loaded;
        }
        private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            var collection = _repository.Get();
            collection.ForEach(p => Processes.Add(p));
            ProcessDataGrid.ItemsSource = Processes;
        }

        private void StopButt_Click(object sender, RoutedEventArgs e)
        {

        }

        private void NewProcessButt_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
