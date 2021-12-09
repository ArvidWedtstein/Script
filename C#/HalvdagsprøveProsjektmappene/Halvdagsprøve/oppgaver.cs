using System; // Her definerer vi at vi vil bruke System

namespace Halvdagsprøve // Dette er en namespace. Den brukes til å logisk arrangere classes, structs, interfaces, enums og delegates
{ // Dette er en bracket. Den brukes her til å definere starten på innholdet i Halvdagsprøve namespacen
    class oppg2a // Dette er en klasse. 
    {
        static void Main(string[] args) 
        { // Dette er en bracket. Den brukes i dette tilfelle for å definere hva som er inne i main methoden

        
            // Oppgave 1

            // Her definerer vi variabelen int tall til 0
            int tall = 0;
            

            if (tall < 10) { // Her sjekker vi om tall er mindre enn 10
                
            } else if (tall > 10) { // Her sjekker vi om tall er mer enn 10

            } else if (tall == 10) { // Her sjekker vi om tall er lik 10

            }



            // Oppgave 2A

            
            // Her spør vi brukeren om hva han/hun heter ved hjelp av en Console.WriteLine funksjon
            Console.WriteLine("Hva heter du?");

            // Her tar vi imot brukerens navn ved å definere en string variabel til å lese hva brukerens navn er. Console.ReadLine gir også brukeren mulighet til å faktisk skrive inn navnet sitt.
            string name = Console.ReadLine();

            // Her spør vi brukeren om hvilken farge han/hun liker best.
            Console.WriteLine("Hvilken farge er den beste? Rød eller blå?");

            // Her leser vi av brukerens favorittfarge og bestemmer at string variabelen favouriteColor skal være favorittfargen som brukeren skrev inn.
            // Vi tar også og konverterer stringen med favorittfargen til store bokstaver.
            string favouriteColor = Console.ReadLine().ToUpper();

            // Her skriver vi ut navnet til brukeren ved å putte string variabelen til navn og favorittfarge inn i selve stringen.
            Console.WriteLine($"Hei {name} Du synes {favouriteColor} er den beste fargen!");


            if (favouriteColor == "BLÅ") { // Her sjekker vi om fargen brukeren valgte er blå .

                // Vis fargen er blå så sett respons til passende tekst for blå.
                Console.WriteLine($"{favouriteColor} er fargen til himmelen, havet og kornblomster.");
            } else if (favouriteColor == "RØD") { // Vis ikke fargen er blå, så sjekk om fargen er rød.

                // Vis fargen er rød så sett respons til passende tekst for rød.
                Console.WriteLine($"{favouriteColor} er fargen til roser, jordbær og kardinalfugler.");
            }

            // Her skriver vi at brukeren kan trykke en tast for å avslutte programmet.
            Console.WriteLine("Trykk én tast for å avslutte programmet");

            // Her leser vi av tasten brukeren trykket.
            Console.ReadKey();


        } // Dette er også en bracket. Den brukes i dette tilfelle for å definere slutten på innholdet i main metoden
    } // OMG. Enda en bracket! I dette tilfelle brukes den for å definere slutten på innholdet i oppg1 klassen
} // Denne bracketen definerer slutten på innholdet i Halvdagsprøve namespacen
