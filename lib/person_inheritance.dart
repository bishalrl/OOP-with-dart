void main() {
 //  Person person1 = Person('Max', 30);
   // person1.showOutput();
   Student student1 = Student('Max', 30);
   student1.showOutput();
   student1.regNo='123';
    student1.sem='1st';
    student1.showstudentOutput();

}
class Person {
  String? name;
  int age;

  Person(this.name, this.age);
  void showOutput() {
    print(name);
    print(age);
  }
}
class Student extends Person {
    String? regNo;
    String? sem;

  Student(super.name, super.age);


   // Student(this.regNo, this.sem);
    void showstudentOutput() {
        print(regNo);
        print(sem);
        print(name);
        print(age);
    }
 }