import time

# Lag en ny fil
file = open('GermanTerritory.txt', 'w')
#Skriv hva det mest intresante er i filen.
file.write("Det mest intresante jeg har lært i python er GUI.")
#Lukk filestreamen
file.close()

#Vent 1 sekund
time.sleep(1)
#Åpne filen
file = open("GermanTerritory.txt", "rt")
data = file.read()
#Split ordene i filen
words = data.split()
#Les hvor mange ord som er i filen
print('Number of words in the German Territory are :', len(words))