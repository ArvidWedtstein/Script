import time
import sys

numb1 = int(input("Oppgi første nummer\n"))

sys.stdout.write("\033[F") #gå tilbake til forrige linje
sys.stdout.write("\033[K") #slett linje
# if type(numb1) == int or type(numb1) == float:
#     print('The variable is a number')
# else:
#     print('The variable is not a number')
operator = input(str(numb1) + " ")
sys.stdout.write("\033[F") #gå tilbake til forrige linje
sys.stdout.write("\033[K") #slett linje
numb2 = input(str(numb1) + " " + operator + " ")
# if type(numb1) == int or type(numb1) == float:
#     print('The variable is a number')
# else:
#     print('The variable is not a number')
if "+" in operator:
    print("=", int(numb1) + int(numb2) )
if "-" in operator:
    print(int(numb1) - int(numb2))
if "*" in operator:
    print(int(numb1) * int(numb2))
if "/" in operator:
    print(int(numb1) / int(numb2))



test = input("")
