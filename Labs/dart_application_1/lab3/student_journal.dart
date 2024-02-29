import 'student.dart';

class StudentJournal {
  List<Student> students = [];
  
  void addStudent(Student student) {
    students.add(student);
  }
  
  void removeStudent(String firstName, String lastName) {
    students.removeWhere((student) => student.firstName == firstName && student.lastName == lastName);
  }
  
  void displayStudentsInfo() {
    print('Список студентов:');
    students.forEach((student) {
      print('ИМЯ: ${student.getfullName()}, СР.БАЛ: ${student.averageGrade}');
    });
  }
  
  void sortStudentsByGPA() {
    students.sort((a, b) => b.averageGrade.compareTo(a.averageGrade));
  }
  
//////////////////////////////////////////////////////

  double averageScore() {
    double total = students.fold(0, (sum, student) => sum + student.averageGrade);
    return total / students.length;
  }
  
  Student? studentWithHighestGPA() {
    if (students.isEmpty) return null;
    return students.reduce((curr, next) => curr.averageGrade > next.averageGrade ? curr : next);
  }
}