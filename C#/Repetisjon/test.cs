using System;

namespace Repetisjon
{
    public class minKlasse
    {
        public string fornavn;
        public string etternavn;
        public int alder;

        public bool erMyndig;

        public minKlasse() {
            fornavn = "";
            etternavn = "";
            erMyndig = false;
            alder = 0;
        }
        public minKlasse(string mittfornavn, string mittetternavn, int minalder) {
            fornavn = mittfornavn;
            etternavn = mittetternavn;
            alder = minalder;
        }

        public void sjekkOmPersonenErMyndig(int personAlder) {
            if (personAlder > 17) {
                erMyndig = true;
            } else {
                erMyndig = false;
            }
        }
    }
}
