void main(){
  int nonNullableint = 10; // this value cannot be null
  //// nonNullableint = null;
  int? nullableint = null; // this value can be null
  nullableint = 10;

  late String description;// removes the non null, basicly dart trsusts us with initilizing the value later
  description = "This is a late variable"; // initialized

  //non null assertion operator "!"
  int value = nullableint!; // '!' ensures dart this is not null by the time of calling

  int value2 = nullableint ?? 1;// if value 2 is null, initilize it as 1, else take it

  String? nullableString = null;
  int stringLength = nullableString?.length ?? 0;// if nullableString is null, stringLength is initilized as 0

  if(nullableint != null){
    int value = nullableint; // no need for non null assertion variable
  }
}