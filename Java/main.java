// import

import java.io.File;
import java.io.FileWriter;
import java.util.Scanner; 
import java.io.IOException; // handle errors

public class main {
  public static void main(String[] args) {
    System.out.println("Hello World");


    // Variables
    String test = "test";

    int testint = 123;

    float testfloat = 1.2f;

    double testdouble = 1.2;

    boolean testbool = false;

    char testchar = 'D'; // må være ''. 

    // define array of strings
    int testarray[] = {1, 2, 3, 4};

    // pointer? of some sort..
    int* charPointer = testarray;

    charPointer++;

    // final variables

    final String teststringfinal = "test";

    // Casting

    int testcast = 9;
    double castdouble = testcast;

    System.out.println(testcast);      // Outputs 9
    System.out.println(castdouble);   // Outputs 9.0

    // calling methods
    test();
  }

  static void test() {
    try {
      File myObj = new File("test.json");
      if (myObj.createNewFile()) {
        System.out.println("File created: " + myObj.getName());
        FileWriter myWriter = new FileWriter("test.json");
        myWriter.write("{'test': 'test'}");
        myWriter.close();
      } else {
        System.out.println("File already exists.");

        // Read file
        Scanner myReader = new Scanner(myObj);
        while (myReader.hasNextLine()) {
          String data = myReader.nextLine();
          System.out.println(data);
        }
        myReader.close();
      }
    } catch (IOException e) {
      System.out.println("An error occurred.");
      e.printStackTrace();
    }
    
  }
}
// To run type: javac main.java in console