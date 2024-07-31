
void main(){
  Car car1 = Car();
  car1.setColor = "red";

  Car car2 = Car();
  car2.setColor = "blue";

  String colorCar1 = car1.getColor;

  print("car 1 color is: $colorCar1");

  car1.whichColor();
  car2.whichColor();

  car1.drive();
}

class Car{
  //! add more attributes
  late String _color;

  set setColor(String color){
    this._color = color;
  }

  String get getColor => this._color;
  //Same as {return this._color;}
  

  //! more methods can be added here
  void drive(){
    print('${this._color} car is moving');
  }

  void whichColor(){
    print('car collor: ${this._color}');
  }
}