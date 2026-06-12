//* Task 1:

class Student {
 late  String name;
 late int age;
  void study() {
    print('$name is studying');
  }
  /**
   ممكن بدل ما نستخدم late نستخدم constructor عشان ن initialize المتغيرات
    Student(this.name, this.age);
   */
 
}

void main() {
  Student student = Student();
  student.name = "menna";
  student.age =20;
  student.study();
  
}
