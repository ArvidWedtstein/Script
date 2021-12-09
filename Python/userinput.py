name = input("Enter name:")
print("Ah, so your name is " + name)
age = input("Enter Age:")
print("and you are " + age + " years old")
height = input("Enter Height:")
print("And " + height + " cm high")
favgame = input("Favorite Game:")
print("and your favorite game is " + favgame)


dictionary = {
    "name": name,
    "age": age,
    "height": height,
    "Favgame": favgame,
}

print("Hei " + dictionary["name"] + ". Du er " + dictionary["age"] + " år og du er " + dictionary["height"] + " høy. Ditt favorittspill er " + dictionary["Favgame"] + ".")
