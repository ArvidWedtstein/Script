def main():
    dictionary = {
        "katt": "firebent dyr",
        "hund": "bjeffende kjøter"
    }
    word = input("Skriv inn et dyrenavn: ")
    print(dictionary[word])
    print("\n")
    repeat = input("Vil du fortsette? Skrive yes eller no: ")
    if repeat == "yes":
        main()
    else if repeat == "no":
        print("Hadet")
    else:
        print("Du må skrive inn yes eller no")