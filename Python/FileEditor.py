import time

# Lag en ny fil
file = open('GermanTerritory.txt', 'w')
#Skriv inn hva det mest intresante er.
file.write("Det mest intresante jeg har lært i python er GUI.")
file.close()

time.sleep(1)
file = open("GermanTerritory.txt", "rt")
data = file.read()
words = data.split()

print('Number of words in the German Territory are :', len(words))