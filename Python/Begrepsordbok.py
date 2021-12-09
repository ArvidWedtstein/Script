import tkinter as tk

import time
import random
from tkinter.filedialog import askopenfilename, asksaveasfilename


def lightmode():
    txt_edit.configure(bg="white", fg="black")
    fr_buttons.configure(bg="white")


def darkmode():
    txt_edit.configure(bg="black", fg="cyan")
    fr_buttons.configure(bg="darkgray")

def bahnschriftmode():
    txt_edit.configure(font="bahnschrift 18")
    btn_search.configure(font="bahnschrift 18")
    btn_lightmode.configure(font="bahnschrift 18")
    btn_darkmode.configure(font="bahnschrift 18")
    btn_bahnschriftmode.configure(font="bahnschrift 18")
    btn_papyrusmode.configure(font="bahnschrift 18")
def papyrusmode():
    txt_edit.configure(font="papyrus 18")
    btn_search.configure(font="papyrus 18")
    btn_lightmode.configure(font="papyrus 18")
    btn_darkmode.configure(font="papyrus 18")
    btn_bahnschriftmode.configure(font="papyrus 18")
    btn_papyrusmode.configure(font="papyrus 18")

def searchForBegrep():
    txt_edit.delete('1.0', tk.END)
    if inputfield.get().lower() in begrepsarray:
        text = begreper[inputfield.get().lower()]
        txt_edit.insert(tk.END, text)
    else:
        text = 'Ugyldig begrep\nPrøv ett av disse begrepene: ' + str(begrepsarray[0:])
        txt_edit.insert(tk.END, text)   


window = tk.Tk()
window.title("Begrepsordbok")


window.rowconfigure(0, minsize=800, weight=1)
window.columnconfigure(1, minsize=800, weight=1)
sequence = ['black', 'grey40', 'grey60', 'grey80', 'white', 'grey80', 'grey60', 'grey40']

txt_edit = tk.Text(window)
txt_edit.configure(bg="black", font="papyrus 18", fg="white", cursor="shuttle")
begrepsarray = ["hdmi", "usb", "ram", "cpu", "gpu", "psu", "hdd", "ssd", "erlingcoin", "cmosbatteri", "biosbatteri", "motherboard", "jørgen", "pccase", "dvi", "displayport", "vga", "rj45"]
begreper = {
  "hdmi": "Står for High Definition Media Interface",
  "usb": "Står for Universal Serial Bus",
  "ram": "Står for Random Access Memory\n- Chrome spiser ram til frokost\n- Pcen din trenger det",
  "cpu": "Står for Central Processing Unit\n- Hjertet i pcen\n- Brukes til å regne ut advanced meth",
  "gpu": "Står for Graphics Processing Unit\n - 3090 stock go brrrr",
  "psu": "Står for Power Supply Unit\n- Gir strøm til pcen.",
  "hdd": "Står for Hard Disk Drive\n- Lagrer data, er ofte tregere enn SSD.",
  "ssd": "Står for Solid State Drive\n- Er som regel kjappere enn HDD",
  "erlingcoin": "Verdens mest verdifulle valuta.",
  "cmosbatteri": "Et batteri som brukes for å lagre BIOS innstillinger",
  "biosbatteri": "Brukes for å lagre BIOS innstillinger",
  "motherboard": "Alle pc komponentene er koblet til hovedkortet",
  "jørgen": "clash of clans player.",
  "pccase": "Et PC case inneholder som regel alle pc komponentene.",
  "dvi": "Står for Digital Visual Interface\n- DVI er en port som brukes for videosignaloverføring",
  "displayport": "Displayport brukes for videosignaloverføring",
  "vga": "Står for Video Graphics Array\n- Har 15 pins\n - Blir brukt for pc video output\n- Er en standard connector for videosignal\n- Er utdatert",
  "rj45": "Står for Registered Jack\n- Brukes for å få tilgang til internet",
  "Sata": "Står for Serial ATA\n- En port som brukes for å koble til harddisker, ssder og DVD drives",
  "vifter": "Brukes for å kjøle ned pc komponentene\nog for å få luften i pc kabinettet til å sirkulere",
  "ps/2": "PS/2 er en 6 pins mini-DIN connector som ble brukt for å koble til tastatur og mus før i tiden"
}

fr_buttons = tk.Frame(window)       
fr_buttons.configure(bg="gray")


btn_papyrusmode = tk.Button(fr_buttons, fg="white", bg="black", text="Papyrus Mode", command=papyrusmode, font='papyrus 16')
btn_bahnschriftmode = tk.Button(fr_buttons, fg="white", bg="black", text="Bahnschrift Mode", command=bahnschriftmode, font='papyrus 16')
btn_lightmode = tk.Button(fr_buttons, fg="white", bg="black", text="Light Mode", command=lightmode, font='papyrus 16')
btn_darkmode = tk.Button(fr_buttons, fg="white", bg="black", text="Dark Mode", command=darkmode, font='papyrus 16')
btn_search = tk.Button(fr_buttons, fg="white", bg="black", text="Search", command=searchForBegrep, font='papyrus 16')
inputfield = tk.Entry(fr_buttons, fg="white", bg="black", font='papyrus 16')

inputfield.lower()
print(inputfield.get())
btn_search.grid(row=0, column=0, sticky="ew", padx=5, pady=5)
inputfield.grid(row=1, column=0, sticky="ew", padx=5)
btn_lightmode.grid(row=6, column=0, sticky="ew", padx=5, pady=0)
btn_darkmode.grid(row=7, column=0, sticky="ew", padx=5, pady=0)
btn_papyrusmode.grid(row=8, column=0, sticky="ew", padx=5, pady=0)
btn_bahnschriftmode.grid(row=9, column=0, sticky="ew", padx=5, pady=0)

fr_buttons.grid(row=0, column=0, sticky="ns")
txt_edit.grid(row=0, column=1, sticky="nsew")

window.mainloop()






