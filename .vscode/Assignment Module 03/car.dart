/*
Create a Car class with properties:
●     brand (String),
●     model (String),
●     year (int),
●     milesDriven (double).

Methods of this class are:
●     drive(double miles): Increases the milesDriven property by the 
                          provided distance value, simulating driving.
●     getMilesDriven(): Retrieves the current milesDriven value.
●     getBrand(): Retrieves the brand of the car.
●     getModel(): Retrieves the model of the car.
●     getYear(): Retrieves the manufacturing year of the car.
●     getAge(): Calculates and returns the age of the car.
*/
/*
Expected Output After creating three Car instances:

      Car 1: Toyota Carmy 2020 Miles: 10000 Age: 3
      Car 2: Honda Civic 2018 Miles: 8000 Age: 5
      Car 3: Ford F-150 2015 Miles: 15000 Age: 8
      Total number of cars created: 3
*/
import 'dart:io';

class Car {
  String brand;
  String model;
  int year = 0; //manufacturing year
  double milesDriven;

  static int numberOfCars = 0; //to track the total number of cars obj created

  Car(
      {required this.brand,
      required this.model,
      required this.year,
      this.milesDriven = 0.0}) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return this.milesDriven;
  }

  String getBrand() {
    return this.brand;
  }

  String getModel() {
    return this.model;
  }

  int getYear() {
    return this.year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - this.year;
  }
}

void main() {
  ///Car Instances 1
  Car toyota = new Car(brand: 'Toyota', model: 'Camry', year: 2020);

  toyota.drive(10000); //miles driven by toyota
  print(
      'Car ${Car.numberOfCars}: ${toyota.getBrand()} ${toyota.getModel()} ${toyota.getYear()} Miles: ${toyota.getMilesDriven().round()} Age: ${toyota.getAge()}');

  ///Car Instances 2
  Car honda = new Car(brand: 'Honda', model: 'Civic', year: 2018);

  honda.drive(8000); // miles driven by honda
  print(
      'Car ${Car.numberOfCars}: ${honda.getBrand()} ${honda.getModel()} ${honda.getYear()} Miles: ${honda.getMilesDriven().round()} Age: ${honda.getAge()}');

  ///Car Instances 2
  Car ford = new Car(brand: 'Ford', model: 'F-150', year: 2015);

  ford.drive(15000); // miles driven by ford
  print(
      'Car ${Car.numberOfCars}: ${ford.getBrand()} ${ford.getModel()} ${ford.getYear()} Miles: ${ford.getMilesDriven().round()} Age: ${ford.getAge()}');

  print('Total number of cars created: ${Car.numberOfCars}');
}
