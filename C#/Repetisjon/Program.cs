using System;

namespace Repetisjon
{
    class Program
    {
        static void Main(string[] args)
        {
            // Variabler
            int tall = 5;

            Console.WriteLine(tall);

            // operator

            int tall2 = 5;

            tall2++;

            // Løkker

            while (tall2 > tall) {
                tall2--;

            }

            minKlasse test = new minKlasse();

            Console.WriteLine(test.fornavn); 
        }
        public static int leggSammen(int talla, int tallb) {
            return talla + tallb;
        }
    }
}
