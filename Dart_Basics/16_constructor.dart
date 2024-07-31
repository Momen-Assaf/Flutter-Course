class Car {
  Car({required String color, required String engine, String? text})
      : _color = color,
        _engine = engine,
        _text = text;

  //! add more attributes
  late String _color;
  late String _engine;
  String? _text; // Nullable private attribute

  set setColor(String color) {
    _color = color;
  }

  set setEngine(String engine) {
    _engine = engine;
  }

  set setText(String text) {
    _text = text;
  }

  String get getColor => _color;

  String get getEngine => _engine;

  String? get getText => _text;

  //! more methods can be added here
  void drive() {
    print('${_color} car is moving');
  }

  void whichColor() {
    print('car color: ${_color}');
  }
}

void main() {
  final Car blueCar = Car(color: "Blue", engine: "v8");
  print(blueCar.getColor); // Outputs: Blue
  print(blueCar.getEngine); // Outputs: v8
  print(blueCar.getText); // Outputs: null

  final Car redCar = Car(color: "Red", engine: "v6", text: "Sporty");
  print(redCar.getColor); // Outputs: Red
  print(redCar.getEngine); // Outputs: v6
  print(redCar.getText); // Outputs: Sporty
}
