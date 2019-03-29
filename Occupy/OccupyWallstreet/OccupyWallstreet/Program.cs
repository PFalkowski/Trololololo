using Microsoft.VisualBasic.Devices;
using System;
using System.Linq;

namespace OccupyWallstreet
{
    class Program
    {
        static void Main(string[] args)
        {
            var computerInfo = new ComputerInfo();
            var bytesToOccupy = (long)(computerInfo.AvailablePhysicalMemory * 0.5);
            int howMany = 1;
            if (bytesToOccupy > int.MaxValue / 2)
            {
                howMany = (int)(bytesToOccupy / (int.MaxValue / 2));
            }
            var arrayOfArrays = new byte[howMany][];
            for (int i = 0; i < howMany; i++)
            {
                arrayOfArrays[i] = Enumerable.Repeat((byte)1, (int.MaxValue - 1) / 2).ToArray();
            }
        }
    }
}
