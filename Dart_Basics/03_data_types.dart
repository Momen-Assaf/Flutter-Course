
void main(){

  bool boolOutput = false;
  print(boolOutput);

  int intOutput = -1;
  print(intOutput);

  double doubleOutput = 3.14;
  print(doubleOutput);

  String stringOutput = "Hello, World!";
  print("The value of the string is: $stringOutput");

  // keywords
  int test;
  test = 1;
  print(test);

  late int example;//// whats the point bro?
  example = 2;// its not nullable, declaring as in line 21 isnt nullable
  print(example);

  final int finalInt = 4;//unchangable created in runtime
  print(finalInt);

  const int constInt = 5;//unchangable created while compiling
  print(constInt);

  //DYNAMIC 

  dynamic dynamicVariable = 2.4;//works with anytype
  print(dynamicVariable);
  dynamic dynamic1Variable = "Tesxt";//works with anytype
  print(dynamic1Variable);

  var varTester;// hover over the name(dynamic datatype)
  var varOutput = 1;//aftyer assigning a value the var changes itself to a static datatype
  print(varOutput);
  //cant change the time after it changes itself
  //// varOutput = "tesxt";//runtime error
  var var1Output = "Tesxt";// string
  print(var1Output);

}