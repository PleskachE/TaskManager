using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TaskManager.Model;

namespace TaskManager.Repositoryes
{
    public class ProcessRepository
    {
        public List<ProcessInfo> Processes { get; set; }
        public ProcessRepository()
        {
            Processes = new List<ProcessInfo>();
            foreach (Process process in Process.GetProcesses())
                Processes.Add(new ProcessInfo { Id=process.Id, Name=process.ProcessName, Memory=process.VirtualMemorySize64.ToString()});
        }
        public List<ProcessInfo> Get()
        {
            return Processes;
        }
    }
}
