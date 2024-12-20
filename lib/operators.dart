//arithmetic operators
void main() {
  int a = 10, b = 3;
  print(a + b); // 13
  print(a - b);
  print(a * b);
  print(a / b);
  print(a ~/ b); // 3
  print(a % b); // 1
}


//Dart support both postfix and prefix increment and decrement operators
void main(){
  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  assert(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  assert(a != b); // -1 != 0
}


//relational operators
void main() {
  int a = 10, b = 20;
  print(a == b);
  print(a != b);
  print(a < b);
  print(a >= b);
  print(a > b); // false
  print(a <= b); // true
}

//Logical operators
void main() {
  bool x = true, y = false;
  print(x && y); // false
  print(x || y); // true
  print(!x);     // false
}


// //Assignment operators
void main() {
  double a = 10;
  a += 5; // a = a + 5
  a -= 5;
  a *= 5;
  a /= 5 ;
  print(a); // 15
 }


// //type test operators
class Person {
  String firstName = '';
}

void main() {
  // Declare and initialize `employee` as an instance of `Person`.
  var employee = Person();

  // Use type casting
  (employee as Person).firstName = 'Bob';

  // Type check
  if (employee is Person) {
    employee.firstName = 'Bob';
  }

  // Print the result
  print(employee.firstName); // Output: Bob
}

//next example of type test operators
void main() {
  var x = 42;
  print(x is int); // true
  print(x is! String); // true
}


//conditional operators
void main() {
  int? x;
  print(x ?? 10); // 10
  x ??= 5; // Assign 5 if x is null
  print(x); // 5
}


//other operators
void main() {
  var list = [1, 2, 3];
  print(list[0]); // 1

  var builder = StringBuffer();
  builder
    ..write('Hello')
    ..write(' World!');
  print(builder.toString()); // Hello World!
}
