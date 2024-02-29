import 'student.dart';
import 'student_journal.dart';

void main() {
  var journal = StudentJournal();

  journal.addStudent(Student('Алихан', 'Амиров', 85.0));
  journal.addStudent(Student('Каиржан', 'Ергожа', 50.0));
  journal.addStudent(Student('Амир', 'Гусманов', 92.3));

  journal.displayStudentsInfo();

  //////////////////////////////////////////////////////////////

  print('\nСредний балл студентов: ${journal.averageScore()}');

  var highestGPAStudent = journal.studentWithHighestGPA();
  if (highestGPAStudent != null) {
    print('Наивысший GPA: ${highestGPAStudent.getfullName()} (GPA: ${highestGPAStudent.averageGrade})');
  } else {
    print('В списке студентов никого нет.');
  }

  journal.sortStudentsByGPA();
  print('\nStudents sorted by GPA:');
  journal.displayStudentsInfo();
}