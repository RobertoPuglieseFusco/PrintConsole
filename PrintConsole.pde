import java.io.FileOutputStream;  
import java.io.PrintStream;

void setup() {
  println("This goes to the console.");
  try { 
    String file = dataPath("")+"console.txt";
    if (!new File(dataPath("")).isDirectory()) {
      if (!new File(dataPath("")).mkdirs()) {
        System.err.println("Directory creation failed!");
        exit();
      }
    }
    FileOutputStream outStr = new FileOutputStream(file, false);
    PrintStream printStream = new PrintStream(outStr);
    System.setOut(printStream);
    System.setErr(printStream);
  }
  catch (IOException e) {
    System.err.println("Error! Check path, or filename, or security manager! "+e);
    exit();
  }
  //println("This goes to the file");
  
  PImage img = loadImage("noImagFile.jpg");
}
void draw(){

println("f " + frameCount);



}
