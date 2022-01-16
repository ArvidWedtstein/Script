
using System;
namespace Prøve101221
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true) { // Loop
                Console.WriteLine("Select A, B, C"); // Skriv ut velg en av bokstavene
                
                string letter = Console.ReadLine(); // Les bokstaven
                letter = letter.ToUpper(); // Konverter bokstaven brukeren skrev til stor bokstav.
                if (letter == "A" || letter == "B" || letter== "C" ) { // Sjekk om bokstaven er enten A, B eller C
                    Console.WriteLine($"Du skrev bokstaven: {letter}"); // Skriv ut bokstaven tok
                } else { // Vis bokstaven ikke er A, B eller C så skriv ugyldig character
                    Console.WriteLine("Invalid Character"); 
                }
            }
        }
    }
}
