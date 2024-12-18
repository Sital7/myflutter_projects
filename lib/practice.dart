import 'dart:io';
void main(){
  //you can take print or stdout for output and stdin for input
  print("welcome to dart");
  // stdout.write("enter your name:");
  //
  // var name = stdin.readLineSync();
  // print("welcome,$name");

  //declare variable without making the object variables can not be called
  //nowadays we can create object without the use of new keyword also
  var raman = new Human(); //or simply write Human()


  //Declaration of variable int,string,boolean....etc
  //if we want null value then we have to write int? a;
  int a;

  //Assign
  a = 7;
  print(a);

  BigInt longvalue;
  longvalue = BigInt.parse("3235643236237627636535653");
  print(longvalue);

  num precentage = 99.65;
  bool isLogin = false;

  isLogin = true;
  

  a = 9;
  print(a);

  //inline declaration
  String name = "Raman";

  name = "Ramanujan";

}

class Human{

  Human();
}
