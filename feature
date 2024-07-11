import tkinter as tk
from time import strftime

def time():
    string = strftime('%H:%M:%S %p')
    label.config(text=string)
    label.after(1000, time)

root = tk.Tk()
root.title('Themed Clock')

# Set the window background color
root.configure(bg='black')

# Create a label with a themed appearance
label = tk.Label(root, font=('calibri', 40, 'bold'), background='black', foreground='cyan')
label.pack(anchor='center', pady=20, padx=20)

# Add a title label with a different style
title_label = tk.Label(root, text="Current Time", font=('calibri', 20, 'italic'), background='black', foreground='white')
title_label.pack(anchor='center')

time()

root.mainloop()
