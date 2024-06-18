#!/usr/bin/python3.11

import socket

from table import TABLE

HOST = "phonetics.ling.udel.edu"
PORT = 8000

def main():
	with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
		s.connect((HOST, PORT))
		s.sendall(b'`asdf')
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
				return
			print(dataIn, TABLE[dataIn])

if __name__ == "__main__":
	main()
