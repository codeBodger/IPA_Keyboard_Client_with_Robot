#!/usr/bin/python3.11

import socket
from pynput.keyboard import Controller
from table import TABLE
from random import random as rand
# from time import sleep # just for testing
import tkinter as tk
from threading import Thread

HOST = "phonetics.ling.udel.edu"
PORT = 8000

KEYBOARD = Controller()

APP = tk.Tk("IPA Keyboard Client")

MESSAGE = tk.StringVar()
KEY = tk.StringVar()

def stop():
	APP.destroy()
	client_socket.close()
	exit()

def client():
	global client_socket
	client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	client_socket.connect((HOST, PORT))
	# s.sendall(b'`asdf') # just for testing
	linking_code = str(rand())[2:8]
	KEY.set(f"Linking code: {linking_code}")
	client_socket.sendall(b'`' + bytes(linking_code, 'utf-8'))
	while True:
		try:
			dataIn = int.from_bytes(client_socket.recv(1), "big")
		except Exception:
			MESSAGE.set("The socket is closed.")
			client_socket.close()
			return
		if dataIn >= len(TABLE):
			match dataIn:
				case 254:
					MESSAGE.set("Connection successful.")
				case 253:
					MESSAGE.set("You've been timed out.")
					client_socket.close()
					return
				case 252:
					MESSAGE.set("Linking successful.")
				case 255 | _:
					MESSAGE.set("An unknown error ocurred.")
			continue
		MESSAGE.set(f"Sent character {dataIn:3}: {TABLE[dataIn]}")
		# sleep(2) # just for testing
		KEYBOARD.press(TABLE[dataIn])
		KEYBOARD.release(TABLE[dataIn])

def app(after_start):
	tk.Button(APP, name="stop", text='Stop', width=25, command=stop).pack()
	tk.Button(APP, name="renew", text='Renew', width=25, command=after_start).pack()
	tk.Label(APP, name="message", textvariable=MESSAGE).pack()
	tk.Label(APP, name="key", textvariable=KEY).pack()
	APP.after(0, after_start)
	APP.mainloop()

def main():
	app(lambda: Thread(target=client, daemon=True).start())

if __name__ == "__main__":
	main()
