from tkinter import *
from tkinter.filedialog import askopenfilename, asksaveasfilename
from datetime import datetime
import random
import json
import sys
from time import sleep
from tkinter import messagebox  
import getpass  


def main():
    velkommen = random.choice(bothilsner)
    chat.insert(END, "Bot: " + velkommen + "\nJeg er Chatboten Nils!")

#Lagre chatten
def save_file():
    filepath = asksaveasfilename(
        defaultextension="txt",
        filetypes=[("Chat Files", "*.chat"), ("RGB Files", "*.rgb"), ("RGBchat Files", "*.rgbchat")]
    )
    if not filepath:
        return
    with open(filepath, "w") as output_file:
        inputtxt = chat.get("1.0", END)
        output_file.write(inputtxt)
    window.title(f"Chatbot - {filepath}")

#Åpne chat filer
def open_file():
    filepath = askopenfilename(
        filetypes=[("Chat Files", "*.chat"), ("RGB Files", "*.rgb"), ("RGBchat Files", "*.rgbchat")]
    )
    if not filepath:
        return
    txt_edit.delete("1.0", tk.END)
    with open(filepath, "r") as input_file:
        text = input_file.read()
        txt_edit.insert(tk.END, text)
    window.title(f"Chatbot - {filepath}")

#Hent tid
def time():
    now = datetime.now()

    current_time = now.strftime("%H:%M:%S")
    print("Current Time =", current_time)

#Slett chatten
def newchat():
    MsgBox = messagebox.askquestion("Hmm","Vil du virkelig slette chatten?")  
    if MsgBox == 'yes':
        chat.delete('1.0', END)

#Funksjon for når man trykket Quit  
def ExitApplication():
    MsgBox = messagebox.askquestion ('Quit','Er du sikker på at du vil lukke chatboten',icon = 'warning')
    if MsgBox == 'yes':
       window.destroy()

#Hent brukerens navn. Dette hentes fra pcens filsystem. Det vil si at det man heter på pcen vil bli hentet inn her.
user = getpass.getuser()


klokke = ["tid", "Hva er klokken", "Hva er klokka", "klokke", "klokkeslett"]
bothilsner = ["Hei du :)", "God dag! ", "God dag " + user]
userhilsner = ["hallo", "hei", "hello", "guten tag", "hi"]

#Hent inn forklaringen og operatorene fra pythonoperators.json
with open('pythonoperators.json') as f:
    # Konverter json om til dictionary.
    pythonoperator = json.load(f)

#Hent inn forklaringene på string, integer osv fra helpcommands.json
with open('helpcommands.json') as j:
    # Konverter json om til dictionary.
    commands = json.load(j)


#Hovedfunksjonen. Denne sjekker hva som blir skrevet
def sendtxt(event=None):

    chat.insert(END, '\n')
    send = "Meg: " + entry.get()
    chat.insert(END, "\n" + send)
    chat.insert(END, '\n')

    #Vis ikke noe er skrevet inn
    if entry.get().lower() == None:
        chat.insert(END, "\n" + 'Bot: Hva trenger du hjelp med?\nSkriv "hjelp" forran')
    #Sjekk om en hilsen er i hilsnerlisten
    elif entry.get().lower() in userhilsner:
        #Hent et tilfeldig objekt fra hilsnerlisten
        svar = random.choice(bothilsner)
        chat.insert(END, "\n" + "Bot: " + svar)

    #Vis det som er skrevet stemmer med ord i klokke arrayen ["tid", "Hva er klokken", "Hva er klokka", "klokke", "klokkeslett"]
    elif entry.get().lower() in klokke:
        now = datetime.now()
        #Konverter tiden til timer, minutt og sekund
        current_time = now.strftime("%H:%M:%S")
        chat.insert(END, "\n" + "Bot: Klokken er nå: " + current_time)
        return
    #Sjekk om ordet 'hjelp' befinner seg i det brukeren har skrevet.
    elif "hjelp" in entry.get().lower():
        test = entry.get().lower()
        if test[6:] == 'string':
            chat.insert(END, "\n" + 'Bot: '+ commands["string"])
            return
        elif test[6:] == 'variabel':
            chat.insert(END, "\n" + "Bot: " + commands["variabel"])
            return
        elif test[6:] == 'integer':
            chat.insert(END, "\n" + 'Bot: ' + commands["integer"])
            return
        elif test[6:] == 'float':
            chat.insert(END, "\n" + 'Bot: ' + commands["float"])
            return
        elif test[6:] == 'operator':
            chat.insert(END, "\n" + 'Bot: ' + commands["operator"])  
            #Loop gjennom alle operatorene i pythonoperators.json
            for items in pythonoperator:
                #For hver operator i pythonoperators.json print ut i chatten
                chat.insert(END, items + '\n')
            return
        elif test[6:] == 'list':
            chat.insert(END, "\n" + 'Bot: ' + commands["list"])  

            return
        #Vis brukeren skriver hjelp og så en operator.
        elif test[6:] in pythonoperator:
            #hent inn forklaringen på den operatoren som brukeren trenger hjelp til.
            text = pythonoperator[test[6:]]
            chat.insert(END, "\n" + "Bot: Forklaring:\n" + text)
            return
        else:
            chat.insert(END, "\n" + 'Bot: Hva trenger du hjelp med?\nSkriv "hjelp" forran')        
    else:
        chat.insert(END, "\n" + "Bot: Beklager, men jeg forsto dessverre ikke det.\nDu kan prøve noen av disse kommandoene:\n-hjelp variabler\n-hjelp string\n-hjelp operator\n-hjelp (en operator bak)")
    entry.delete(0, 'end')
window = Tk()
window.title("Arvid's Chatbot")
window.geometry("500x620")
window.resizable(width=False, height=False)

photo = PhotoImage(file = "icon4.png")
window.iconphoto(False, photo)

main_menu = Menu(window, tearoff=0)
file_menu = Menu(window, tearoff=0)

main_menu.add_cascade(label="File", menu=file_menu)
file_menu.add_command(label="New", command=newchat)
file_menu.add_command(label="Open", command=open_file)
file_menu.add_command(label="Save As", command=save_file)


main_menu.add_command(label="Quit", command=ExitApplication)



chat = Text(window)
chat.configure(bg="white", font=("Helvetica", 16), fg="#000000", wrap=WORD)
chat.place(x=6, y=6, height=485, width=470)



entry = Entry(window, width=100, bg="White", font=("Helvetica", 30), fg="#000000")
entry.place(x=6, y=500, height=88, width=360)
entry.lower()
# Bind Enter knappen til entry feltet
entry.bind('<Return>', sendtxt)
send = Button(window, text="SEND", command=sendtxt, activebackground="#fafafa", bg="white", font=("Helvetica", 16), fg="#000000", highlightcolor="#ff0000")
send.place(x=370, y=500, height=88, width=115)
scrollbar = Scrollbar(window, command=chat.yview)
scrollbar.place(x=475, y=5, height=385)
#Utfør main funksjonen. Denne funksjonen får chatboten til å sende velkommensmeldingen i begynnelsen
main()



window.config(menu=main_menu)
window.mainloop()






