abstract class Vehicle{
  late int _speed;
  Vehicle(this._speed);
  move();
  set setSpeed(int s)=>_speed=s;
  get getSpeed=>_speed;
}