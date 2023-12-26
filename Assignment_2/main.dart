void main() {
  //Assignment # 02
  //1. Take XY coordinate and determine in which quadrant the coordinate point lies.
  int x = 2;
  int y = -2;
  if (x > 0 && y > 0) {
    // x=>positive , y=>positive
    print("1st Quadrant");
  } else if (x < 0 && y > 0) {
    // x=>negative, y=> positive
    print('2nd Quadrant');
  } else if (x < 0 && y < 0) {
    // x=> negative , y=> negative
    print('3rd Quadrant');
  } else {
    print('4th Quadrant'); // x=>positve , y=> negative
  }

  //2. Take three numbers and find a maximum between three numbers.
  int number1 = 51;
  int number2 = 10;
  int number3 = 71;

  if ((number1 > number2) && (number1 > number3)) {
    //logic for number1
    print('$number1 is greater');
  } else if ((number2 > number1) && (number2 > number3)) {
    // lofic for number2
    print('$number2 is greater');
  } else {
    print('$number3  is greater'); // otherwise print number3
  }

  //3. Print the multiplication table of a number till 10.
  // multiplication table of 5.
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }

  //2. Calculate the sum of first 20 Odd numbers.
  int sum = 0;
  for (int i = 0; i <= 20; i++) {
    if (i % 2 != 0) {
      print(i); // show odd ones
      sum += i; // collect sum of all odd ones
    }
  }
  print(' The sum of all odd number till 20 is $sum');

  //3. Calculate the factorial of a number.
  // Example: Factorial of 5 is 120.
  // Explanation: 1*2*3*4*5 = 120
  int factorial = 1; // declear variable for factorial
  int fac = 5; // declear variable for iterable
  for (int i = 1; i <= fac; i++) {
    print('$factorial x $i =  ${factorial * i}'); // Reference
    factorial *= i; // add values in variable
  }
  print(factorial); //show output

  //Check if the given number is prime or composite.
  int n = 6;
  int count = 0;
  for (int i = 2; i <= n; i++) {
    if (n % i == 0) {
      count++;
    }
  }
  if (count == 1) {
    //as we know prime number always factor with itself i.e only 1 factor
    print('prime');
  } else {
    print('Composite'); // composite number always at least 2 factors
  }
}
