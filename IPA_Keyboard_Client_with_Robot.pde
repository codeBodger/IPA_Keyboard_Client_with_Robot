import processing.net.*;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.*;

import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.datatransfer.Transferable;
import java.awt.Toolkit;

import java.util.*;

Client c;

int dataIn;
char[] table = new char[0];
String loginKey = rand64Str(18);
PImage QRCode;
int QRWidth = 500;

Robot robot;
Clipboard clipboard;

void settings() {
  size(QRWidth, QRWidth + 200);
}

void setup() {
  MyTable.tableInit();
  table = MyTable.table;
  
  writeQR(loginKey);
  
  try {
    robot = new Robot();
    clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  } catch (AWTException e) {
    exit();
  }
  
  //Connect to the server at phonetics.ling.udel.edu
  c = new Client(this, "phonetics.ling.udel.edu", 8000);
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
  int data = C.read();
  if (data >= table.length) {
    switch (data) {
      case 254:
        println("Connection successful.");
      return;
      
      case 253:
        println("You've been timed out.");
      return;

      case 255:
      default:
        println("An unknown error ocurred.");
      return;
    }
  }
  
  dataIn = data;
  println(dataIn, table[dataIn]);

  Transferable cb = clipboard.getContents(null);

  StringSelection stringSelection = new StringSelection(str(table[dataIn]));
  clipboard.setContents(stringSelection, null); robot.delay(25);
  
  robot.keyPress(KeyEvent.VK_CONTROL); robot.delay(25);
  robot.keyPress(KeyEvent.VK_V); robot.delay(25);
  robot.keyRelease(KeyEvent.VK_V); robot.delay(25);
  robot.keyRelease(KeyEvent.VK_CONTROL); robot.delay(25);

  clipboard.setContents(cb, null);
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
