/*
REQUIRES espanso.  
REQUIRES MODIFIED CONFIG AND MATCH FILES
*/

import processing.net.*;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.*;

import java.util.*;

Client c;

int dataIn;
char[] table = new char[0];
String loginKey = rand64Str(18);
PImage QRCode;
int QRWidth = 500;

Robot robot;

void settings() {
  size(QRWidth, QRWidth + 200);
}

void setup() {
  MyTable.tableInit();
  table = MyTable.table;
  
  writeQR(loginKey);
  
  try {
    robot = new Robot();
    robot.setAutoWaitForIdle(true);
  } catch (AWTException e) {
    exit();
  }
  
  //Connect to the server at 3.21.93.254
  c = new Client(this, "3.139.30.141", 8000);
  //Connect to the server on the local machine
  c.write("`" + loginKey); //backtick = 96
}

void draw() {
  background(dataIn);
  image(QRCode, 0,0, width, width);
  
  fill((dataIn + 128) % 256);
  
  textSize(30);
  text(loginKey, 20, width + 50);
  
  textSize(100);
  text(table[dataIn], 20,width + 150);
}

// Just got data from server
void clientEvent(Client C) {
  dataIn = C.read();
  
  int[] keyCodes = keysToType(dataIn);
  
  for (int code : keyCodes) {
    print(code, "\t");
    robot.keyPress(code);
  }
  println(dataIn, table[dataIn]);
}

int[] keysToType(int data) {
  int[] out = new int[] {
    KeyEvent.VK_SEMICOLON,
    KeyEvent.VK_BACK_SLASH,
    KeyEvent.VK_I,
    KeyEvent.VK_P,
    KeyEvent.VK_A,
    KeyEvent.VK_0,
    KeyEvent.VK_0,
    KeyEvent.VK_0
  };
  String Data = str(data);
  switch (Data.length()) {
    case 1:
      out[out.length-1] = (int)Data.charAt(0);
    break;
    
    case 2:
      out[out.length-2] = (int)Data.charAt(0);
      out[out.length-1] = (int)Data.charAt(1);
    break;
    
    default:
      out[out.length-3] = (int)Data.charAt(0);
      out[out.length-2] = (int)Data.charAt(1);
      out[out.length-1] = (int)Data.charAt(2);
  }
  return out;
}

String rand64Str(int length) {
  final char[] ALPHABET = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', '!', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', '/', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'i', 'i', 'i', 'i', 'i', 'i', 'i', 'i', 'i', 'i', '-', '_'};
  String out = "";
  for (int i = 0; i < length; i++) {
    out += ALPHABET[int(random(64))];
  }
  return out;
  //return "aDZiEG-gBmiTZvjWnj"; // For testing
}

// This function is modified from here: https://www.dropbox.com/s/jezpiz9dhb3aidd/QRLib.rar?dl=0&file_subpath=%2FQRLib
// Some more info: https://forum.processing.org/two/discussion/15572/qr-code-library-for-processing-3-0-2-windows-linux-macosx-android-writeqr-and-readqr.html
void writeQR(String myCodeText){
  int size = 125;
  try {
      Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable<EncodeHintType, ErrorCorrectionLevel>();
      hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
      QRCodeWriter qrCodeWriter = new QRCodeWriter();
      BitMatrix byteMatrix = qrCodeWriter.encode(myCodeText,BarcodeFormat.QR_CODE, size, size, hintMap);
      int CrunchifyWidth = byteMatrix.getWidth();
      
      QRCode = createImage(CrunchifyWidth, CrunchifyWidth, RGB);
      QRCode.loadPixels();
      for (int i = 0; i < QRCode.pixels.length; i++) {
      QRCode.pixels[i] = #FFFFFF;
      }
      QRCode.updatePixels();
      
      for (int i = 0; i < CrunchifyWidth; i++) {
          for (int j = 0; j < CrunchifyWidth; j++) {
              if (byteMatrix.get(i, j)) {
                  QRCode.set(i, j, #000000);
              }
          }
      }
  } 
  catch (Exception e) {
    e.printStackTrace();
  }
}
