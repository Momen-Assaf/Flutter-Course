
void main(List<String> args){
  // records
  final record = records();
  print('Name: ${record.$1} ${record.$2}');
  //or
  final (first, last) = records();
  print('Name: ${first} ${last}');

  final describedDate = describeDate(DateTime.now());
  print(describedDate);

  final soundOfAnimal = whatDoesItSoundLike(Sheep());
  print(soundOfAnimal);
}

(String, String) records(){
  final firstName = 'Momen';
  final lastName = 'Assaf';
  return (firstName, lastName);
}

String describeDate(DateTime dt) => switch(dt.weekday){
  1 => "Sun",
  6 || 7 => "Weekend",
  _ => "Hang in there"
};

String whatDoesItSoundLike(Animal animal) => switch(animal){// needs a case on all inhereted classes
  Cow c => '$c moo',
  Sheep s => '$s baa',
  Pig p => '$p oink',
  _ => 'Unknown animal',
};

abstract interface class DoSth{
  void myMethod();
}

class WeDoSth implements DoSth{
  @override
  void myMethod(){}
}

sealed class Animal{}

class Cow extends Animal{}

class Sheep extends Animal{}

class Pig extends Animal{}