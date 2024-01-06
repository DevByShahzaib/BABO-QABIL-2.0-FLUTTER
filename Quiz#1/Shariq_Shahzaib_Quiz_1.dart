import 'dart:math';

void main() {
  // Q1
  // Solution
  int userInput = 50;
  for (var i = 1; i <= userInput; i++) {
    if (i % 3 == 0) {
      print('$i Fizz');
    } else if (i % 5 == 0) {
      print("$i Buzz");
    }
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print("$i FizzBuzz");
    }
  }

  // Q2 with Q3
  // Solution
  generatePassword();
}

void generatePassword() {
  String pass =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789/,@\$';
  int passwordLength = 10;
  String password = '';
  String digits = '0123456789';
  int specialCharactor = 0;
  int digit = 0;
  for (var i = 0; i < passwordLength; i++) {
    password += pass[Random().nextInt(pass.length)];
  }

  for (var i = 0; i <= 9; i++) {
    if (password[i] == '/' ||
        password[i] == ',' ||
        password[i] == '\$' ||
        password[i] == '@') {
      specialCharactor++;
    }
    if (password[i] == '0' ||
        password[i] == '1' ||
        password[i] == '2' ||
        password[i] == '3' ||
        password[i] == '4' ||
        password[i] == '5' ||
        password[i] == '6' ||
        password[i] == '7' ||
        password[i] == '8' ||
        password[i] == '9') {
      digit++;
    }
  }
  print("Password :  $password");

  if ((specialCharactor >= 4) && digit >= 3) {
    print("Strong Password");
  } else if ((specialCharactor >= 2) && (digit >= 2)) {
    print("Good password");
  } else if ((specialCharactor >= 1) && (digit >= 1)) {
    print("fair password");
  } else if (specialCharactor == 0) {
    print('Weak password');
  } else {
    print("invalid password");
  }
}
