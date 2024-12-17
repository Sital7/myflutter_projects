import 'dart:io';
void main(){
  //you can take print or stdout for output and stdin for input
  print("welcome to dart");

  stdout.write("enter your name:");

  var name = stdin.readLineSync();
  print("welcome,$name");
}