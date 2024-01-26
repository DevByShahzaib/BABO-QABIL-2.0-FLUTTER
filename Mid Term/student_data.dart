import 'dart:io';

void main() {
  Student obj = Student();
  obj.display();
}

class Student {
  String name =
      ''; //in dart private variable scope is applicable from out of the file(file base scope variable privacy)
  String id = '';
  List<String> courses = [];

  // Student(this._id, this._name, this._courses);

  display() {
    print("""
          1. Enter 1 to add your course :
          2. Enter 2 to drop your course :
          3. Enter 3 to display your courses :
          4. Enter 4 to Exit :
          """);

    var userInput = int.parse(stdin.readLineSync()!);

    if (userInput == 1) {
      stdout.write('Enter your Course Name :');
      var temp = stdin.readLineSync()!;
      print("$temp is added to your course list");
      add_course(temp);
      display();
    } else if (userInput == 2) {
      stdout.write('Enter your Course Name :');
      var temp = stdin.readLineSync()!;
      if (courses.contains(temp)) {
        print("$temp is dropped from your course list");
        drop_course(temp);
        display();
      } else {
        print("The course you Entered is not in your Courses List");
        display();
      }
    } else if (userInput == 3) {
      if (courses.isNotEmpty) {
        display_courses();
        display();
      } else {
        print("You did not selected any course !");
        display();
      }
    } else {
      print("Have a Good Day...!");
    }
  }

  add_course(String course) {
    courses.add(course);
  }

  drop_course(String course) {
    courses.remove(course);
  }

  display_courses() {
    print("Your Current Courses is : ${courses.toString()}");
  }
}
