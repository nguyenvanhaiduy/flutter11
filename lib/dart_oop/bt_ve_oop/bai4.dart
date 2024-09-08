import 'dart:developer';

class Vehicle {
  final String name;
  final String color;
  final int maxSpeed;
  final int numberOfWheels;

  Vehicle({
    required this.name,
    required this.color,
    required this.maxSpeed,
    required this.numberOfWheels,
  });

  void startEngine() {
    log('$name đang khởi động');
  }

  void stopEngine() {
    log('$name đang dừng lại');
  }
}

class Car extends Vehicle {
  final int numberOfDoors;
  final int numberOfAirbags;
  final int numberOfDrivingMode;

  Car({
    required super.name,
    required super.color,
    required super.maxSpeed,
    required super.numberOfWheels,
    required this.numberOfDoors,
    required this.numberOfAirbags,
    required this.numberOfDrivingMode,
  });

  void turnOnAirConditioner() {
    log('$name đã bật điều hoà');
  }
}

class Motorbike extends Vehicle {
  final int seatHeight;

  Motorbike({
    required super.name,
    required super.color,
    required super.maxSpeed,
    required super.numberOfWheels,
    required this.seatHeight,
  });
  void brake() {
    log('$name đang thực hiện phanh');
  }
}

void main() {
  Car car = Car(
    name: 'BMW',
    color: 'black',
    maxSpeed: 260,
    numberOfWheels: 4,
    numberOfDoors: 4,
    numberOfAirbags: 8,
    numberOfDrivingMode: 3,
  );
  Motorbike motorbike = Motorbike(
    name: 'Wave alpha',
    color: 'black',
    maxSpeed: 110,
    numberOfWheels: 2,
    seatHeight: 80,
  );

  car.startEngine();
  car.turnOnAirConditioner();
  motorbike.startEngine();
  motorbike.brake();
}
