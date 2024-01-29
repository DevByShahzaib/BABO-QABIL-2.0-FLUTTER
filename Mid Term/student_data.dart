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
          1. Enter 1 to SYet Your Name :
          2. Enter 2 to Set Your ID :
          3. Enter 3 to Add Your Courses :
          4. Enter 4 to Drop our Course :
          5. Enter 5 to Display Your Courses :
          6. Enter 6 to Display Your All Data :
          7. Enter 7 to Exit :
          """);

    var userInput = int.parse(stdin.readLineSync()!);
    if (userInput == 1) {
      set_name();
    } else if (userInput == 2) {
      set_id();
    } else if (userInput == 3) {
      print('how many courses do you want to add ?');
      var temp = int.parse(stdin.readLineSync()!);
      for (var i = 0; i < temp; i++) {
        print('enter course name:');
        var tempo = stdin.readLineSync()!;
        add_course(tempo);
      }

      display();
    } else if (userInput == 4) {
      stdout.write('Enter your Course that you want to drop :');
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
