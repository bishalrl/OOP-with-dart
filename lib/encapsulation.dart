import 'person.dart';
void main() {
Person person1 = Person('Max', 30);
person1.showOutput();
person1.name = 'Manu';
person1.age = 31;
person1.showOutput();
print(person1.name);
}
