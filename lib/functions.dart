
void main()
{

  //calling the functions

  //calling addTwoNumbers() function with paramerters
  var sum = addTwoNumbers(5, 6);
  print(addTwoNumbers(4, 6));
  print("Additon: $sum");

  //calling hello() function without paramerters
  hello();

  //calling lambda funciton
  var addition = add(2, 4, 6);
  print("lamdba add function: ${add(1, 2, 3)}");
  print("sum: $addition");
}

// function with paramerters
int addTwoNumbers(int a, int b)
{
  return a+b ;
}

// function without paramerters
void hello()
{
  print("Hello I am Shital Khatri.");
}

//lambda function
final add = (int a, int b, int c) => (a+b+c);
