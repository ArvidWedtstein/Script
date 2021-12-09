using System; // Her definerer vi at vi vil bruke System

namespace Halvdagsprøve2 // Dette er en namespace. Den brukes til å logisk arrangere classes, structs, interfaces, enums og delegates
{ 
    class oppg2b
    {
        // Static void main kjøres når dotnet console kjøres
        static void Main(string[] args)
        {
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
            Console.WriteLine($"Hei {name}! Du synes {favouriteColor} er den beste fargen!");

            // Her kaller vi på checkColor metoden som da sjekket hvilken farge brukeren har valgt og så gi ut en passende respons basert på hvilken farge brukeren valgte.
            checkColor(favouriteColor);

            // Her skriver vi at brukeren kan trykke en tast for å avslutte programmet.
            Console.WriteLine("Trykk én tast for å avslutte programmet");

            // Her leser vi av tasten brukeren trykket.
            Console.ReadKey();
        }

        // Her lager vi en metode for å sjekke fargen til brukerne og gi ut en passende respons. inne i parantesen "()" definerer vi hvilken input metoden skal ha.
        // i dette tilfelle skal metoden ha en string
        public static void checkColor(string color) {

            // her definerer vi respons stringen
            string response = "";

            switch (color) { // Dette er en switch statement. Den går gjennom og sjekker om color passer med noen av casene
                case "BLÅ": // Her sjekker vi om fargen brukeren valgte er blå .
                    // Vis fargen er blå så sett respons til passende tekst for blå.
                    esponse = $"{color} er fargen til himmelen, havet og kornblomster.";
                    break;
                case "RØD":  // Her sjekker vi om fargen brukeren valgte er rød.
                    // Vis fargen er rød så sett respons til passende tekst for rød.
                    response = $"{color} er fargen til roser, jordbær og kardinalfugler.";
                    break;
                default: // Vis fargen ikke stemmer overens med en av de andre casene så blir default casen utført
                    response = "ugyldig farge"; // Vis fargen ikke stemmer overens med en av casene så blir responsen ugyldig farge
                    break;
            }

            // Her skriver vi ut responsen.
            Console.WriteLine(response);
        }

    } 
} // Dette er en bracket
