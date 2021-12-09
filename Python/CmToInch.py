import time
import sys
def cmtoinch():
    cm = input("Oppgi cm\n")

    inch = 0.393701

    print("Svar =", int(cm) * inch, "inches")
    input("Trykk enter for å fortsette")
    cmtoinch()

    

cmtoinch()

