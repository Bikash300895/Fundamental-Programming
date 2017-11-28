from tkinter import *
from tkinter import ttk


root = Tk()

root.geometry('640x480+200+200')

ttk.Label(root, text="Yellow", background='yellow').place(x=100, y=50)
ttk.Label(root, text="blue", background='blue').place(relx=.5, rely=.5)
ttk.Label(root, text="Orange", background='orange')
ttk.Label(root, text="Green", background='green')


root.mainloop()