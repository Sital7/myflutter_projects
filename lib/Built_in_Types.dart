//Numbers(int,double)
void main() {
  // int example
  int age = 25;
  print('Age: $age'); // Output: Age: 25

  // double example
  double pi = 3.14159;
  print('Value of pi: $pi'); // Output: Value of pi: 3.14159

  // Type inference
  var distance = 100; // Dart infers this as int
  var weight = 70.5; // Dart infers this as double
  print('Distance: $distance, Weight: $weight'); // Output: Distance: 100, Weight: 70.5

  // Mathematical operations
  int a = 5, b = 2;
  print('Addition: ${a + b}'); // Output: 7
  print('Division: ${a / b}'); // Output: 2.5 (returns double)
  print('Integer Division: ${a ~/ b}'); // Output: 2 (returns int)
  print('Modulus: ${a % b}'); // Output: 1
}


//string
void main() {
  // Single and double quotes
  String singleQuote = 'Hello';
  String doubleQuote = "World";
  print('$singleQuote $doubleQuote'); // Output: Hello World

  // Multiline strings
  String multiline = '''
  This is
  a multiline string.
  ''';
  print(multiline);

  // String interpolation
  String name = 'Alice';
  int age = 30;
  print('Name: $name, Age: $age'); // Output: Name: Alice, Age: 30

  // String concatenation
  String greeting = singleQuote + ' ' + doubleQuote + '!';
  print(greeting); // Output: Hello World!
}


//Boolean(bool)
void main() {
  bool isActive = true;
  bool isComplete = false;

  // Logical operations
  print(isActive && isComplete); // Output: false
  print(isActive || isComplete); // Output: true
  print(!isActive); // Output: false
}


//List(Arrays)
void main() {
  // Fixed-length list
  var numbers = [1, 2, 3, 4];
  print(numbers); // Output: [1, 2, 3, 4]

  // Accessing elements
  print(numbers[0]); // Output: 1

  // Adding and removing elements
  numbers.add(5);
  numbers.removeAt(0);
  print(numbers); // Output: [2, 3, 4, 5]

  // Immutable list
  var constantList = const [1, 2, 3];
  // constantList.add(4); // Error: Cannot modify an unmodifiable list
}


//sets(set)
void main() {
  var fruits = {'apple', 'banana', 'orange'};
  fruits.add('apple'); // Duplicate, won't be added
  print(fruits); // Output: {apple, banana, orange}
}


//Maps(map)
void main() {
  var person = {'name': 'John', 'age': 30};
  print(person['name']); // Output: John

  person['age'] = 31; // Update value
  print(person); // Output: {name: John, age: 31}
}


//Null Safety(Null)
void main() {
  int? nullableInt;
  print(nullableInt); // Output: null

  nullableInt = 5;
  print(nullableInt); // Output: 5
}


//Runes
void main() {
  Runes input = Runes('\u{1F600}');
  print(String.fromCharCodes(input)); // Output: 😀
}


//symbols
void main() {
  Symbol sym = #mySymbol;
  print(sym); // Output: Symbol("mySymbol")
}


//Dynamic and var
void main() {
  var inferred = 'Dart'; // Inferred as String
  dynamic flexible = 42; // Can hold any type

  flexible = 'Now a string';
  print(flexible); // Output: Now a string
}


//generic list
void main() {
  // List with a specific type
  List<int> numbers = [1, 2, 3];
  numbers.add(4); // Allowed
  // numbers.add('Hello'); // Error: Not an int

  print(numbers); // Output: [1, 2, 3, 4]
}



//generic map
void main() {
  // Map with specified key and value types
  Map<String, int> scores = {'Alice': 95, 'Bob': 85};
  scores['Charlie'] = 90; // Allowed
  // scores[42] = 'Hello'; // Error: Key must be String, value must be int

  print(scores); // Output: {Alice: 95, Bob: 85, Charlie: 90}
}


//generic class
//define own generic classes to make them reusable with different types.
class Box<T> {
  T content;

  Box(this.content);

  T getContent() => content;

  void setContent(T value) {
    content = value;
  }
}

void main() {
  var intBox = Box<int>(123);
  print(intBox.getContent()); // Output: 123

  var stringBox = Box<String>('Hello');
  print(stringBox.getContent()); // Output: Hello
}


//generic method
//create methods that are generic to work with various types.
T getFirstElement<T>(List<T> items) {
  return items.isNotEmpty ? items[0] : throw Exception('List is empty');
}

void main() {
  print(getFirstElement<int>([1, 2, 3])); // Output: 1
  print(getFirstElement<String>(['A', 'B', 'C'])); // Output: A
}


//multi type parameters
class Pair<K, V> {
  K key;
  V value;

  Pair(this.key, this.value);
}

void main() {
  var pair = Pair<String, int>('age', 25);
  print('Key: ${pair.key}, Value: ${pair.value}'); // Output: Key: age, Value: 25
}


//bounded type
class Stack<T extends num> {
  List<T> _items = [];

  void push(T value) {
    _items.add(value);
  }

  T pop() {
    if (_items.isEmpty) {
      throw Exception('Stack is empty');
    }
    return _items.removeLast();
  }
}

void main() {
  var stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  print(stack.pop()); // Output: 20

  // var invalidStack = Stack<String>(); // Error: String does not extend num
}


//using dynamic vs generic
void dynamicExample(dynamic value) {
  print(value.runtimeType); // Type is checked at runtime
}

void genericExample<T>(T value) {
  print(value.runtimeType); // Type is known at compile time
}

void main() {
  dynamicExample(123); // Output: int
  dynamicExample('Hello'); // Output: String

  genericExample<int>(123); // Output: int
  // genericExample<String>(123); // Compile-time error
}
