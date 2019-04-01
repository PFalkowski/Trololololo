using Microsoft.VisualBasic.Devices;
using System;
using System.Linq;

namespace OccupyRam
{
    class Program
    {
        static void Main(string[] args)
        {
            var rng = new Random();
            var computerInfo = new ComputerInfo();
            var bytesToOccupy = (long)(computerInfo.AvailablePhysicalMemory * 0.8);
            int howMany = 1;
            if (bytesToOccupy > int.MaxValue / 2)
            {
                howMany = (int)(bytesToOccupy / ((long)int.MaxValue / 2));
            }
            var arrayOfArrays = new byte[howMany][];
            for (int i = 0; i < howMany; i++)
            {
                arrayOfArrays[i] = new byte[int.MaxValue / 2];
                rng.NextBytes(arrayOfArrays[i]);
            }
        }
    }
}
