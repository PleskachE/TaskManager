using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace TaskManager.Converters
{
    public class MemoryConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string _result = value.ToString() + " байт";
            return _result;
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return DependencyProperty.UnsetValue;
        }
    }
}
