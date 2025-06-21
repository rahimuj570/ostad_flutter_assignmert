import 'dart:io';

import 'Car.dart';

void main(){
  print('What is the car speed?\n');
  int speed = int.parse(stdin.readLineSync()!);
  Car car = Car(speed);
  car.move();
}