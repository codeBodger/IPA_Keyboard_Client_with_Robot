#!/usr/bin/python3.11

import socket
from pynput.keyboard import Controller
from table import TABLE
from random import random as rand
# from time import sleep # just for testing
from gui import GUI
from threading import Thread

HOST = "phonetics.ling.udel.edu"
PORT = 8000

KEYBOARD = Controller()

APP = GUI("IPA Keyboard Client")

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
	client_socket.sendall(b'`' + bytes(linking_code, 'utf-8'))
	while True:
		try:
			dataIn = int.from_bytes(client_socket.recv(1), "big")
		except Exception:
			APP.children["message"].Label = "The socket is closed."
			client_socket.close()
			return
		if dataIn >= len(TABLE):
			match dataIn:
				case 254:
					APP.children["message"].Label = f"Connection successful.\nLinking code: {linking_code}"
				case 253:
					APP.children["message"].Label = "You've been timed out."
					client_socket.close()
					return
				case 252:
					APP.children["message"].Label = "Linking successful."
				case 255 | _:
					APP.children["message"].Label = "An unknown error ocurred."
			continue
		APP.children["message"].Label = f"Sent character {dataIn:3}: {TABLE[dataIn]}"
		# sleep(2) # just for testing
		KEYBOARD.press(TABLE[dataIn])
		KEYBOARD.release(TABLE[dataIn])

def app(after_start):
	APP.button("stop-button", "Stop", stop)
	APP.button("renew-button", "Renew", after_start)
	APP.text("message", "Loading...")
	APP.mainloop(after_start)

def main():
	app(lambda: Thread(target=client, daemon=True).start())

if __name__ == "__main__":
	main()
