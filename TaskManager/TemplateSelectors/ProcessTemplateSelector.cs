using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
                if ((process.PagedSystemMemorySize / 1000000) > 10)
                    return NewMemoryTemplate;
            }
            return MemoryTemplate;
        }
    }

}

