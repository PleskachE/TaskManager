using Microsoft.Win32;
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Threading;
using TaskManager.Repositoryes;

namespace TaskManager
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly ProcessRepository _repository;
        private ObservableCollection<Process> Processes;
        private CollectionViewSource ItemSourceList;
        private DispatcherTimer Timer;
        public MainWindow()
        {
            InitializeComponent();
            _repository = new ProcessRepository();
            Processes = new ObservableCollection<Process>();
            Timer = new DispatcherTimer();
            Loaded += MainWindow_Loaded;
            Timer.Interval = TimeSpan.FromSeconds(1);
            Timer.Tick += Timer_tick;
        }
        private void Timer_tick(object sender, EventArgs e)
        {
            Process _tempProcess;
            TimeSpan _time;
            try
            {
                _tempProcess = ProcessDataGrid.SelectedItem as Process;
            }
            catch
            {
                TimeBox.Text = null;
                _tempProcess = null;
            }
            if(_tempProcess != null)
            {
                try
                {
                    _time = DateTime.Now - _tempProcess.StartTime;
                    TimeBox.Text = String.Format("{0:00} : {1:00} : {2:00}", _time.Hours, _time.Minutes, _time.Seconds);
                }
                catch { TimeBox.Text = null; }
            }
        }
        private void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
            var collection = _repository.Get();
            collection.ForEach(p => Processes.Add(p));
            ItemSourceList = new CollectionViewSource() { Source = Processes };
            ProcessDataGrid.ItemsSource = ItemSourceList.View;
            Timer.Start();
        }
        private void StopButt_Click(object sender, RoutedEventArgs e)
        {
            var _item = Processes.First(x => x.Id == (ProcessDataGrid.SelectedItem as Process).Id);
            Processes.First(x => x.Id == (ProcessDataGrid.SelectedItem as Process).Id).Kill();
            Processes.Remove(_item);
            TimeBox.Text = null;
        }
        private void StartButt_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog _openFileDialog = new OpenFileDialog();
            string _path;
            _openFileDialog.Filter = "Exe (*.exe)|*.exe";
            if (_openFileDialog.ShowDialog() == true)
                _path = _openFileDialog.FileName;
            else
                return;
            Processes.Add(Process.Start(_path));
        }
        private void FilterBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            ItemSourceList.View.Filter = o => ((Process)o).ProcessName.StartsWith(FilterBox.Text);
            ItemSourceList.View.Refresh();
        }

        private void GreenThemeButt_Click(object sender, RoutedEventArgs e)
        {
            ResourceDictionary _newDictionary = new ResourceDictionary();
            _newDictionary.Source = new Uri("Resources/GreenStyle.xaml", UriKind.Relative);
            this.Resources.MergedDictionaries.Add(_newDictionary);
        }

        private void OrangeThemeButt_Click(object sender, RoutedEventArgs e)
        {
            ResourceDictionary _newDictionary = new ResourceDictionary();
            _newDictionary.Source = new Uri("Resources/OrangeStyle.xaml", UriKind.Relative);
            this.Resources.MergedDictionaries.Add(_newDictionary);
        }

        private void CloseWindow_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
