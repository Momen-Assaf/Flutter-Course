void main() {
  Student student1  = Student();
  student1.setSemester = 2;
  student1.setName = "John Doe";
  student1.setAge = 20;
  

  Person person1 = Person();
  person1.setName = "Jane Smith";
  person1.setAge = 30;
  ////person1.semester
  
  int semester = student1.getSemester;
  print(semester);

  student1.run();
  student1.study(student1.getName);
  person1.jump(person1.getName);
}

mixin Learner{
  void study(String name){
    print('$name is Learning');
  }
}

mixin Jumper{
  void jump(String name){
    print('$name is Jumping');
  }
}

class Person with Learner, Jumper {
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name) {
    this._name = name;
  }

  set setAge(int age) {
    this._age = age;
  }

  void run() {
    print("$_name runs");
  }
}

class Student extends Person with Jumper, Learner {
  late int _semester;

  int get getSemester => this._semester;

  set setSemester(int semester) {
    this._semester = semester;
  }

  void party(){
    print("$_name is studying and is in $_semester");
  }
}
