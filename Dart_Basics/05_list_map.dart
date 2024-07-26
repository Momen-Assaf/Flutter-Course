
void main(){

  List<int> exampleList = [1,2,3,4,5,6,7,8,9];
  // List<int> exampleList1 = [1,2,3,4,5,6,7,8,9];
  print(exampleList);
  List<dynamic> exampleList1 = [1,2,3,4,"string",6.5,7,8,9];
  print(exampleList1);
  exampleList1.add("value");
  print(exampleList1);


  Map<String,dynamic> exampleMap = {
    "key1": 3,
    "key2": "value2",
    "key3": 3.5
  };

  print(exampleMap);
  print(exampleMap["key2"]);
  print(exampleMap.keys);
  print(exampleMap.values);
}