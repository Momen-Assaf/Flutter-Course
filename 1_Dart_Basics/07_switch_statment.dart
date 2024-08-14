void main() {
  final String name = "weird";

  switch (name.toLowerCase()) {
    case "hans":
      print("My name is Hans");
      break;
    case "momen":
      print("my name is momen");
    default:
      print("my name is $name");
  }
}
