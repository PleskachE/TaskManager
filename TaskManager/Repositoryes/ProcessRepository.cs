using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskManager.Repositoryes
{
    public class ProcessRepository
    {
        public List<Process> Processes { get; set; }
        public ProcessRepository()
        {
            Processes = new List<Process>();
            foreach (Process process in Process.GetProcesses())
                Processes.Add(process);
        }
        public List<Process> Get()
        {
            return Processes;
        }
    }
}
