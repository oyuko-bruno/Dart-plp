// Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

// Third class to create student and teacher objects and call methods
class School {
  void run() {
    // Create student object
    var student = Student('John', 15, 10);

    // Create teacher object
    var teacher = Teacher('Ms. Smith', 35, 'Math');

    // Call methods to print information
    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  // Create school object
  var school = School();

  // Call run method to print student and teacher information
  school.run();
}
