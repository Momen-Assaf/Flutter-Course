
void main(){
  List<int> numberList = [3,4,5,6,7,8,9,10,11,12,13];
  List<int> numberList1 = [];

  print(numberList.getRange(2, 5));//indexes

  numberList.forEach((element) {//element is a copy of the numbers list, making changes to it wont change the original list
    element++;
    numberList1.add(element);
    print(element);
  });

  print(numberList);
  print(numberList1);
}