import 'dart:io';

import 'Car.dart';

void main(){
  print('What is the car speed?\n');
  int speed = int.parse(stdin.readLineSync()!);
  Car car = Car(speed);
  car.move();

  //using setter
  print('\nusing setter method set the speed');
  car.setSpeed=50;
  car.move();

}