class Student {

  String firstName;
  String lastName;
  double averageGrade;
  
  Student(this.firstName, this.lastName, this.averageGrade);

  ///

  String getfullName() {
    return '$firstName $lastName';
  }
}