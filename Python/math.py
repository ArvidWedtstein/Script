import time
import sys

numb1 = int(input("Oppgi første nummer\n"))

sys.stdout.write("\033[F") #gå tilbake til forrige linje
sys.stdout.write("\033[K") #slett linje

operator = input(str(numb1) + " ")
sys.stdout.write("\033[F") #gå tilbake til forrige linje
sys.stdout.write("\033[K") #slett linje
numb2 = input(str(numb1) + " " + operator + " ")

if "+" in operator:
    print("=", int(numb1) + int(numb2) )
if "-" in operator:
    print(int(numb1) - int(numb2))
if "*" in operator:
    print(int(numb1) * int(numb2))
if "/" in operator:
    print(int(numb1) / int(numb2))



test = input("")
