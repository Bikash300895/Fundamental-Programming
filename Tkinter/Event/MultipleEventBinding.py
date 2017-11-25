from tkinter import *
from tkinter import ttk


root = Tk()

label1 = ttk.Label(root, text='Label1')
label2 = ttk.Label(root, text="Label2")

label1.pack()
label2.pack()

label1.bind('<ButtonPress>', lambda e: print('Label 1 button'))
label1.bind('<1>', lambda e: print('1 Pressed'))

root.mainloop()