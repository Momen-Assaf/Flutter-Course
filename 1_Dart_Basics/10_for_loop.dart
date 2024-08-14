
void main(){
  List<int> numberList = [1,2,3,4,5,6,7,8];
  List<int> numberList2 = [];

  for( int i = 0; i < numberList.length; i++){
    if(numberList[i]%2 == 0)numberList2.add(numberList[i]);
    print("list element ${numberList[i]}");
  }
  print("second list $numberList2");
}