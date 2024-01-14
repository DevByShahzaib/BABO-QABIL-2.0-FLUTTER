import 'dart:io';

void main() {
  var obj = Bank();
  obj.menu();
}

class Bank {
  String pin = '';
  int balance = 0;

  menu() {
    stdout.write('''
                        Hello, How would you like to proceed?
                        1. Enter 1 to create pin
                        2. Enter 2 to deposite
                        3. Enter 3 to withdraw
                        4. Enter 4 to check balance
                        5. Enter 5 to exit
        ''');
    final String userInput = stdin.readLineSync()!;
    if (userInput == '1') {
      createPin();
    } else if (userInput == '2') {
      deposite();
    } else if (userInput == '3') {
      withdraw();
    } else if (userInput == '4') {
      checkBalance();
    } else {
      print("tata bye bye");
    }
  }

  createPin() {
    stdout.write("Enter your pin :");
    pin += stdin.readLineSync()!;
    print('Pin set successfully');
    menu();
  }

  deposite() {
    stdout.write("Confirm your pin :");
    var temp = stdin.readLineSync()!;
    if (temp == pin) {
      stdout.write("Enter you desire amount");
      balance += int.parse(stdin.readLineSync()!);
      print('Deposite successfully');
    } else {
      print("Invalid pin...");
    }
    menu();
  }

  withdraw() {
    stdout.write("Confirm your pin :");
    var temp = stdin.readLineSync()!;
    if (temp == pin) {
      stdout.write("Enter you desire amount");
      balance -= int.parse(stdin.readLineSync()!);
      print('Withdraw successfully');
    } else {
      print("Invalid pin...");
    }
    menu();
  }

  checkBalance() {
    stdout.write("Confirm your pin :");
    var temp = stdin.readLineSync()!;
    if (temp == pin) {
      print(balance);
    } else {
      print("Invalid pin...");
    }
    menu();
  }
}
