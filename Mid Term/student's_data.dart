void main() {
  Student shahzaib =
      Student('790078601', 'Shahzaib Khan', ['Automata Theory', 'DBMS']);
  Student elon = Student(
      '790078601', 'Elon Musk', ['Networking & Data Communication', 'DSA']);
  shahzaib.display_courses();
  shahzaib.add_course('Compiler Consturction');
  shahzaib.display_courses();
  shahzaib.drop_course('DBMS');
  shahzaib.display_courses();

  print(
      '===========================================================================');
  elon.display_courses();
  elon.add_course('Organizational Behavior');
  elon.display_courses();
  elon.drop_course('DSA');
  elon.display_courses();
}

class Student {
  String _name; //in dart private variable scope is applicable from out of the file(file base scope variable privacy)
  String _id;
  List<String> _courses;

  Student(this._id, this._name, this._courses);

  add_course(String course) {
    _courses.add(course);
  }

  drop_course(String course) {
    _courses.remove(course);
  }

  display_courses() {
    print(_courses);
  }
}
