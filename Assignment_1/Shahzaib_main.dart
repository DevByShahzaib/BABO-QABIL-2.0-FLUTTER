void main() {
  // Assignment #01
  // SHAHZAIB KHAN(UBIT)

  //1) Declear a list of your favorite foods.
  List<String> foods = [
    'Burger',
    'Pizza',
    'Chinees',
    'Biryani',
    'Nehari',
    'Pulao'
  ];
  // a. Print the first and last object of the list
  print(foods.first);
  print(foods.last);

  // b. Print reversed version of the list
  print(foods.reversed);

  // c. Print the length of the list
  print(foods.length);

  //-------------------------------------------------------------------------------------

  // 2. Declare two integer variables and perform arithmetic operations between them. Make sure to print results.
  int number1 = 5;
  int number2 = 4;
  print(number1 + number2);
  print(number1 - number2);
  print(number1 * number2);
  print(number1 / number2);
  print(number1 ~/ number2);
  print(number1 % number2);

  //-------------------------------------------------------------------------------------

  // 3. Create a program that converts Fahrenheit to Celsius.
  // a. Declare a double variable for the Fahrenheit value, apply formula and print the converted temperature.
  double Fahrenheit = 212;
  // b. Formula: Celsius = (Fahrenheit - 32) * 5/9.
  double Celsius = (Fahrenheit - 32) * 5 / 9;
  print(Celsius);
}
