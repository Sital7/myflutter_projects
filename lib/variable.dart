void main(){
  print('welcome to dart practice');

  String name = "ram";

  //var
  var section;   //dynamic datatype or dynamic section
  section = "s";  //string

  section = 7;   //int

  section = false;  //boolean

  var rollno = 9;
  rollno = 16;
}


//default value
void main() {
  int? lineCount; // Nullable integer, can hold null
  assert(lineCount == null); // Assertion to confirm it starts as null

  // Initialize the boolean variable
  bool weLikeToCount = true;

  // Assign value to lineCount based on the boolean variable
  if (weLikeToCount) {
    lineCount = countLines();
  } else {
    lineCount = 0;
  }

  print("Line count: $lineCount");
}

// Example function to simulate counting lines
int countLines() {
  return 42; // Return some line count as an example
}

//basic example
void main() {
  int age = 18;
  assert(age >= 18, "Age must be at least 18.");
  print("Age is valid.");
}


//without a message
void main() {
  int value = 5;
  assert(value < 10); // Passes because 5 < 10
  print("Assertion passed!");
}


//validating function arguments
void setAge(int age) {
  assert(age > 0, "Age must be greater than zero.");
  print("Age is $age");
}


//checking pre condition
void processOrder(int quantity) {
  assert(quantity > 0, "Quantity must be positive.");
  print("Processing $quantity items.");
}


//final variables
void main() {
  final currentTime = DateTime.now(); // Value determined at runtime
  print("Current time: $currentTime");

  // currentTime = DateTime.now(); // Error: Cannot reassign a final variable
}


//const variables
void main() {
  const pi = 3.14159; // Compile-time constant
  print("Value of pi: $pi");

  // const currentTime = DateTime.now(); // Error: 'const' variables must be constant and cannot use runtime values
}
