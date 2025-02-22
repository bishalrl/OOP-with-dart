void main(){
Car car=Car('Audi', 2021, 'Audi', 'Black', 4);
car.showVehicleOutput();
car.showCarOutput();
car.calculateRentalPrice(5);
}
class Vehicle{
  String model;
  int year;
  String brand;
  Vehicle(this.model, this.year, this.brand);

  void showVehicleOutput(){
    print(brand);
    print(year);
    print(model);
  }
  double calculateRentalPrice(int day){
    double fare= day*100;

    print(fare);
    return fare;
  }
}

class Car extends Vehicle{
  String color;
  int door;
  Car(String model, int year, String brand, this.color,this.door)
  :super(model, year, brand);
  void showCarOutput(){
    print(color);

  }
  @override
    double calculateRentalPrice(int day){
        return super.calculateRentalPrice(day);
    }
}