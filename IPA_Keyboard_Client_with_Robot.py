#!/usr/bin/python3.11

import socket
from pynput.keyboard import Controller
from table import TABLE
# from time import sleep # just for testing

HOST = "phonetics.ling.udel.edu"
PORT = 8000

keyboard = Controller()

def main():
	with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
		s.connect((HOST, PORT))
		s.sendall(b'`asdf') # just for testing
		while True:
			dataIn = int.from_bytes(s.recv(1), "big")
			if dataIn >= len(TABLE):
				match dataIn:
					case 254:
						print("Connection successful.")
					case 253:
						print("You've been timed out.")
					case 255 | _:
						print("An unknown error ocurred.")
				continue
			print(dataIn, TABLE[dataIn])
			# sleep(2) # just for testing
			keyboard.press(TABLE[dataIn])
			keyboard.release(TABLE[dataIn])

if __name__ == "__main__":
	main()
