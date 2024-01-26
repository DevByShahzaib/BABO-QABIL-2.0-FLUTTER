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
          1. Enter 1 to set your name :
          2. Enter 2 to set your id :
          3. Enter 3 to add your courses :
          4. Enter 4 to drop your course :
          5. Enter 5 to display your courses :
          6. Enter 6 to display your all data :
          7. Enter 7 to exit :
          """);

    var userInput = int.parse(stdin.readLineSync()!);
    if (userInput == 1) {
      set_name();
    } else if (userInput == 2) {
      set_id();
    } else if (userInput == 3) {
      stdout.write('Enter your Course Name :');
      var temp = stdin.readLineSync()!;
      print("$temp is added to your course list");
      add_course(temp);
      display();
    } else if (userInput == 4) {
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
    } else if (userInput == 5) {
      if (courses.isNotEmpty) {
        display_courses();
        display();
      } else {
        print("You did not selected any course !");
        display();
      }
    } else if (userInput == 6) {
      display_all_data();
      display();
    } else {
      print("Have a Good Day...!");
    }
  }

  set_name() {
    print('Enter your name :');
    name = stdin.readLineSync()!;
    print('Hello $name Welcome to Student Portal');
    display();
  }

  set_id() {
    print('Enter your id :');
    id = stdin.readLineSync()!;
    print('$id set as your id');
    display();
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

  display_all_data() {
    if ((name != null && id != null) || courses.isNotEmpty) {
      print("""
          Name : $name,
          Id : $id,
          Courses : $courses
          """);
    } else {
      print('Sorry ! Your must have fill your complete data');
    }
  }
}
