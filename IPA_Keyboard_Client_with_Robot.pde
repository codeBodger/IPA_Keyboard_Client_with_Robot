import processing.net.*;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.*;

import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.datatransfer.Transferable;
import java.awt.Toolkit;

//Server s;
Client c;

int dataIn;
String[] table = new String[163];
String username = "Username Goes Here";
String password = "Password Goes Here";

Robot robot;
Clipboard clipboard;

boolean firstrun = false;
void setup() {
  size(400,200);
  //frameRate(120);
  textSize(30);
  
  MyTable.tableInit();
  table = MyTable.table;
  
  try {
    String[] config = loadStrings("config.txt");
    username = config[0];
    password = config[1];
  } catch (Exception e) {
    saveStrings("config.txt", new String[] {username, password});
    firstrun = true;
  }
  
  try {
    robot = new Robot();
    clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  } catch (AWTException e) {
    exit();
  }
  
  
  //Connect to the server at 3.21.93.254
  c = new Client(this, "3.139.30.141", 8000);
  //Connect to the server on the local machine
  c.write("`" + username + password); //backtick = 96
}

void draw() {
  if (firstrun) {
    background(0);
    text("Enter information into config.txt, then restart the program.\n\nClick anywhere to exit.", 10,10 , width-20,height-20);
    noLoop();
  }
  else {
    background(dataIn);
    text(table[dataIn], 100,100);
  }
}

// Just got data from server
void clientEvent(Client C) {
  dataIn = C.read();
  println(dataIn, table[dataIn]);

  Transferable cb = clipboard.getContents(null);

  StringSelection stringSelection = new StringSelection(table[dataIn]);
  clipboard.setContents(stringSelection, null); robot.delay(25);
  
  robot.keyPress(KeyEvent.VK_CONTROL); robot.delay(25);
  robot.keyPress(KeyEvent.VK_V); robot.delay(25);
  robot.keyRelease(KeyEvent.VK_V); robot.delay(25);
  robot.keyRelease(KeyEvent.VK_CONTROL); robot.delay(25);

  clipboard.setContents(cb, null);
}

void mousePressed() {
  if (firstrun) {
    exit();
  }
}
