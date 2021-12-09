import tkinter as tk

import time
import random
from tkinter.filedialog import askopenfilename, asksaveasfilename

def open_file():
    filepath = askopenfilename(
        filetypes=[("All Files", "*.*"), ("Text Files", "*.txt"), ("Erling", "*.erling"), ("All hail RGBism", "*.rgb")]
    )
    if not filepath:
        return
    txt_edit.delete("1.0", tk.END)
    with open(filepath, "r") as input_file:
        text = input_file.read()
        txt_edit.insert(tk.END, text)
    window.title(f"Arvid's Text Editor - {filepath}")

def save_file():
    filepath = asksaveasfilename(
        defaultextension="txt",
        filetypes=[("Text Files", "*.txt"), ("All Files", "*.*"), ("Erling", "*.erling"), ("All hail RGBism", "*.rgb")],
    )
    if not filepath:
        return
    with open(filepath, "w") as output_file:
        text = txt_edit.get("1.0", tk.END)
        output_file.write(text)
    window.title(f"Arvid's Text Editor - {filepath}")


def lightmode():
    txt_edit.configure(bg="white", fg="black")
    fr_buttons.configure(bg="white", font="papyrus 12")


def darkmode():
    txt_edit.configure(bg="black", fg="cyan")
    fr_buttons.configure(bg="darkgray", font="papyrus 12")

def _from_rgb(rgb):
    return "#%02x%02x%02x" % rgb   

def change(delay, frame, sequence, index):
    index = (index + 1) % len(sequence)
    frame.configure(background=sequence[index])
    frame.after(delay, lambda: change(delay, frame, sequence, index))




window = tk.Tk()
window.title("Arvid's Text Editor")


window.rowconfigure(0, minsize=800, weight=1)
window.columnconfigure(1, minsize=800, weight=1)
sequence = ['black', 'grey40', 'grey60', 'grey80', 'white', 'grey80', 'grey60', 'grey40']
txt_edit = tk.Text(window)
txt_edit.configure(bg="black", font="papyrus 12", fg="cyan", cursor="shuttle")

fr_buttons = tk.Frame(window)       
fr_buttons.configure(bg="gray")

btn_lightmode = tk.Button(fr_buttons, bg=_from_rgb((0, 255, 255)), text="Light Mode", command=lightmode, font='papyrus 16')
btn_darkmode = tk.Button(fr_buttons, bg=_from_rgb((0, 255, 255)), text="Dark Mode", command=darkmode, font='papyrus 16')
btn_open = tk.Button(fr_buttons, bg=_from_rgb((0, 255, 255)), text="Open", command=open_file, font='papyrus 16')
btn_save = tk.Button(fr_buttons, bg=_from_rgb((0, 255, 255)), text="Save As...", command=save_file, font='papyrus 16')



btn_open.grid(row=0, column=0, sticky="ew", padx=5, pady=5)
btn_save.grid(row=1, column=0, sticky="ew", padx=5)
btn_lightmode.grid(row=2, column=0, sticky="ew", padx=5, pady=0)
btn_darkmode.grid(row=3, column=0, sticky="ew", padx=5, pady=0)

fr_buttons.grid(row=0, column=0, sticky="ns")
txt_edit.grid(row=0, column=1, sticky="nsew")

window.mainloop()
