class Person {
  String _name;
  int _age;
  String get name =>_name;
  int get age =>_age;
   set name(String name){
    _name=name;
   }
   set age(int age){
    if(age>0){
      _age=age;
    }
   }
  Person(this._name, this._age);
  void showOutput() {
    print(_name);
    print(_age);
  }
}