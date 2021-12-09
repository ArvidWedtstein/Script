#Mitt første program
print('REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE')
x = 5
y = 10
print (x * y)

array = ["1", "2", "3", "4", "5"]
print(array)
print(array[2])
for item in array :
    print(item)





if "4" in array:
    array.append("AAAAAAAAAAAAAAAA")
else:
    print(len(array))



def search():
    usrinput = input("Add to list:")

    if "clear" in usrinput:
        array.clear()
    if "add" in usrinput:
        array.append(usrinput)     
    print(array)
    return
search()



