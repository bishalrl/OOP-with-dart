void main(){
    Apple apple=Apple('Macbook Pro', 'i7', '1TB', 200000, 'Silver','2021');
    apple.showOutput();
    apple.showappleOutput();
}
class Laptop{
  String name;
  String processor;
  double price;
  String storage;
  Laptop(this.name, this.processor,  this.storage,this.price);
  void showOutput(){
    print(name);
    print(processor);
    print(price);
    print(storage);
  }
}

class Apple extends Laptop{
  String color;
  String model;
  Apple(String name, String processor, String storage, double price, this.color,this.model)
  :super(name, processor, storage, price);
  void showappleOutput(){
    
    
    print(model);
    print(storage);
  }
}