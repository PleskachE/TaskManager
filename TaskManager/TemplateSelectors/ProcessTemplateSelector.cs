using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;

namespace TaskManager.TemplateSelectors
{
    public class ProcessTemplateSelector : DataTemplateSelector
    {
        public DataTemplate MemoryTemplate { get; set; }
        public DataTemplate NewMemoryTemplate { get; set; }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            
            if (item is Process process)
            {
                if (process.PagedSystemMemorySize > 100000)
                    return NewMemoryTemplate;
            }
            return MemoryTemplate;
        }
    }

}

