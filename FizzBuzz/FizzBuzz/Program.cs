using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FizzBuzz
{
    class Program
    {
        static void Main(string[] args)
        {
            int n; 
            for (n = 1; n <= 100; n++ )
            {
                if (n % 15 == 0)
                {
                    Console.WriteLine("FizzBuzz");
                }

                if (n % 3 == 0)
                {
                    Console.WriteLine("Fizz");
                }

                if (n % 5 == 0)
                {
                    Console.WriteLine("Buzz");
                }
                else
                {
                    Console.WriteLine(n); 
                }
            }

            
        }
    }
}
