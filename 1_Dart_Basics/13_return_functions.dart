void main(){
  int num1 = 4, num2 = 6;
  int result = addition(num1, num2);
  print(result);
  int result2 = add(a: num1, b: num2); 
  print(result2);
}

int addition(int a, int b){
  return a + b;
}

int add({required int a, required int b}){
  return a+b+1;
}