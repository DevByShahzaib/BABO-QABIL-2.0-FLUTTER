import 'dart:io';

void main() {
  var obj = BankAcount();
  obj.display();
}

class BankAcount {
  String account_type = '';
  String AccountNumber = '';
  double balance = 0;

  display() {
    stdout.write('''
                        Hello, How would you like to proceed?
                        1. Enter 1 to select Account Type
                        2. Enter 2 to create pin
                        3. Enter 3 to deposite
                        4. Enter 4 to withdraw
                        5. Enter 5 to check balance
                        6. Enter 6 to check Interest Rate
                        7. Enter 7 to bank interest policy
                        8. Enter 8 to exit
                        =>''');
    final String userInput = stdin.readLineSync()!;
    if (userInput == '1') {
      accountType();
    } else if (userInput == '2') {
      createPin();
    } else if (userInput == '3') {
      deposite();
    } else if (userInput == '4') {
      withdraw();
    } else if (userInput == '5') {
      checkBalance();
    } else if (userInput == '6') {
      checkInterest();
    } else if (userInput == '7') {
      bankInterestPolicy();
    } else {
      print("Have a Good Day...!");
    }
  }

  bankInterestPolicy() {
    print("""
    If your plan is for 1 year or less --> Interest will 40%
    If your plan is for 2 years or less --> Interest will 20%
    If your plan is for 3 years or less --> Interest will 10%
    If your plan is for 4 years or less --> Interest will 5%
    If your plan is for 5 years or less --> Interest will 2.5%
    If your plan is for above 5 years --> Interest will 1.5%""");
    display();
  }

  checkInterest() {
    stdout.write("How many years plan do you have ? :");
    num yearsPlan = int.parse(stdin.readLineSync()!);
    if (yearsPlan > 0) {
      if (yearsPlan <= 1) {
        num interestRate = (balance * 40 * yearsPlan) / 100; // 40% as interest
        print("Your bank interest will be $interestRate");
        display();
      } else if (yearsPlan <= 2) {
        num interestRate = (balance * 20 * yearsPlan) / 100; // 20% as interest
        print("Your bank interest will be $interestRate");
        display();
      } else if (yearsPlan <= 3) {
        num interestRate = (balance * 10 * yearsPlan) / 100; // 10% as interest
        print("Your bank interest will be $interestRate");
        display();
      } else if (yearsPlan <= 4) {
        num interestRate = (balance * 5 * yearsPlan) / 100; // 5% as interest
        print("Your bank interest will be $interestRate");
        display();
      } else if (yearsPlan <= 5) {
        num interestRate =
            (balance * 2.5 * yearsPlan) / 100; // 2.5% as interest
        print("Your bank interest will be $interestRate");
        display();
      } else if (yearsPlan > 5) {
        num interestRate = (balance * 1.5 * yearsPlan) /
            100; // above 5 years interest will be 1.5%
        print("Your bank interest will be $interestRate");
        display();
      }
    } else {
      print('Sorry...! this service is not allowed');
      display();
    }
  }

  createPin() {
    if (AccountNumber.isEmpty) {
      stdout.write("Enter your Account Number :");
      AccountNumber = stdin.readLineSync()!;
      print('Account number set successfully');
      display();
    } else {
      print('Account Number is already set');
    }
  }

  deposite() {
    stdout.write("Confirm your Account Number :");
    var temp = stdin.readLineSync()!;
    if (temp == AccountNumber) {
      stdout.write("Enter you desire amount :");
      balance += int.parse(stdin.readLineSync()!);
      print('Deposite successfully');
    } else {
      print("Invalid pin...");
    }
    display();
  }

  withdraw() {
    stdout.write("Confirm your Account Number :");
    var temp = stdin.readLineSync()!;
    if (temp == AccountNumber) {
      stdout.write("Enter you desire amount :");
      var amount = int.parse(stdin.readLineSync()!);
      if (balance >= amount) {
        balance -= amount;
        print("Withdraw successfully");
      } else {
        print(
            "Sorry!,Your current balance is less than your desired amount...");
      }
    } else {
      print("Invalid pin");
    }
    display();
  }

  checkBalance() {
    stdout.write("Confirm your Account Number :");
    var temp = stdin.readLineSync()!;
    if (temp == AccountNumber) {
      print("Your current Balance is : $balance");
    } else {
      print("Invalid pin...");
    }
    display();
  }

  accountType() {
    print("""   
    1) Enter 1 for personal 
    2) Enter 2 for Bussiness
    """);
    int temp = int.parse(stdin.readLineSync()!);
    if (temp == 1) {
      account_type = 'Personal Account';
      print("Personal Account Set Successfully");
    } else if (temp == 2) {
      account_type = 'Business Account';
      print("Business Account Set Successfully");
    } else {
      print('We have only two Services');
    }
    display();
  }
}
