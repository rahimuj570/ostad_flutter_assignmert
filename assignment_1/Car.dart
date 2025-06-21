import 'Vehicle.dart';

class Car extends Vehicle{
int _speed;
Car(this._speed) :super(_speed);
  @override
  move() {
    print("The car is moving at ${getSpeed} km/h");  
  }
  
}