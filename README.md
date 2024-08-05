# IPA_Keyboard_Client_with_Robot
The computer side Client, written in Python, takes the key-byte it gets from the [Router Server](https://github.com/codeBodger/IPA_Keyboard_Router_Server?tab=readme-ov-file#readme) and gets the corresponding character from a list.  The client uses `pynput` to inject the IPA character as if from the keyboard. 

The client displays a button to stop it, and when it has been disconnected, a button to renew the connection.  It also displays text indicating what’s going on (connected, linked, the linking-code when necessary, the key-code and corresponding character that was most recently typed).  Finally, it displays another button to get additional linking-codes for if the user wishes to link multiple secondary devices with the [Website](https://github.com/codeBodger/IPA_Keyboard_Website?tab=readme-ov-file#readme) loaded on them at once.   

## Definitions
|               |                                                                                        |
| ------------- | -------------------------------------------------------------------------------------- |
| Key‑code:     | the three digit<sub>10</sub> (000-164) code representing a single IPA character        |
| Key‑byte:     | the key-code as a single byte (typically implicitly casted to `int`)                   |
| Long‑code:    | the 18 digit<sub>64</sub> code to indicate which client a key-byte needs to be sent to |
| Linking‑code: | the six digit<sub>10</sub> code to get the long-code from Router Server to Website     |