// const age = 27;
// const twiceAge = age * 2;

// Three metods to write fxns...............

// String getFullName(String firstName, String lastName) {
//   return firstName + ' ' + lastName;
// }

// String getFullName(String firstName, String lastName) {
//   return '$firstName $lastName';
// }

// String getFullName(String firstName, String lastName) => '$firstName $lastName';

// operators & if-else

// void test() {
//   final name = 'namira';
//   if(name == 'namira') {
//     print('yes, this is namira');
//   }
//   else {
//     print('no, this is not namira');
//   }
// }

// void test() {
//   final name = 'namira';
//   if(name == 'namira') print('Yes, this is namira'); 
//   print('Hello World');
// }

// void test() {
//   const name = 'namira';
//   if (name == 'namira') {
//     print('hello namira');
//   } else if (name != 'namira') {
//     print('This is not namira');
//   } else {
//     // print('I don\'t know.');
//     print("I don't know.");
//   }
// }

// infix operator
// void test() {
//   final age = 20;
//   final halfAge = age / 2;
//   final doubleAge = age * 2;
//   print(halfAge);
// }

// prefix operator
// void test() {
//   var age = 20;
//   final ageMinus = --age;
//   print(age);
//   print(ageMinus);
// }

// + - / * ==

// void test() {
//   var name = 'nami';
//   final nameTime20 = name * 20;
//   print(nameTime20)
// }

//lists
// void test() {
//   final name = ['ammy','mily','coco'];
//   final ammy = name[2];
//   print(ammy);
// }

// list length
// void test() {
//   final names = ['ammy','mily','coco'];
//   final length = names.length;
//   print(length);
//   print(names.length);
// }

// list add value
// void test() {
//   var names = ['ammy','mily','coco'];
//   names.add('may name');
//   print(names.length);
// }

// Sets in dart
// void test() {
//   var names = {'ammy', 'milly', 'coco'};
//   names.add('ammy');
//   names.add('milly');
//   names.add('coco');
//   print(names);
// }

//maps
// void test() {
//   var person = {
//     'age' : 20, 
//     'name' : 'milly'};
//     print(person);
//     person['lastname'] = 'ammy';
//     print(person);
// }

// nullable
// void test() {
//   String? name = null;
//   print(name);
//   name = 'coco';
//   print(name);
// }

//list null
// void test() {
//   List<String?> names = ['ammy', 'milly', null];
//   names = null;
// }

// void test() {
//   List<String?>? names = ['ammy', 'milly', null];
//   names = null;
// }
 // null-aware assignment
// void test(String? firstName, String? middleName, String? lastName) {
//   String? name = firstName;
//   name ??= middleName;
//   name ??= lastName;
//   print(name);

  // const String? firstName = 'null';
  // const String? middleName = 'john';
  // const String? lastName = 'cooper';


  // if (firstName != null) {
  //   print("first name is the first non-null value");
  // } else if (middleName != null) {
  //   print("middle name is the first non-null value");
  // } else if (lastName != null) {
  //   print("last name is the first non-null value");
  // }
// }

// conditional invocation

// void test() {
//   List<String>? names = null;
//   final numberOfName = names.length;
// } error occured

// void test(List<String>? names) {
//   final int length;
//   if (names != null){
//     final length = names.length;
//   }
// } 

//instead of that
// void test(List<String>? names) {
//   final length = names ?. length ?? 0;

// } 

// void test(List<String>? names) {
//   final length = names ?. length ?? 0;

// } 

//dart enumerations

// enum PersonPerperties {
//   firstName, lastName, age
// } 

//  void test() {
//   // print(PersonPerperties.firstName.name);
//   print(PersonPerperties.firstName);
//  }

//dart enumerations - switch stmt

// enum AnimalType { cat, dog, rabbit}

// void test(AnimalType animalType) {
  // if (animalType == AnimalType.cat) {
  //   print('oh I love cats');
  // } else if (animalType == AnimalType.dog) {
  //    print('Dogs are so fluffy');
  // } else if (animalType == AnimalType.rabbit) {
  //    print('I wish I had a bunny');
  // }

// use switch with return

  // switch (animalType) {
  //   case AnimalType.cat:
  //     print('cat');
  //   return;
  //   case AnimalType.dog:
  //     print('dog');
  //   return;
  //   case AnimalType.rabbit:
  //     print('rabbit');
  // }
  // print('function is finished');

// use switch with break

  // switch (animalType) {
  //   case AnimalType.cat:
  //     print('cat');
  //   break;
  //   case AnimalType.dog:
  //     print('dog');
  //   break;
  //   case AnimalType.rabbit:
  //     print('rabbit');
  // }
  // print('function is finished');
// }

//example enumeration
 
//  enum AnimalType { cat, dog, rabbit}
//  void makeSureThisIsCat(AnimalType animalType) {
//   if (animalType != AnimalType.cat) return;
//  }

//Classes

// class Person {
//   void run(){
//     print("Running");
//   }
//   void breathe() {
//     print("Breathing");
//   }
// }

// void test() {
//   Person();  //instance
//   final person = Person(); //instantiate
//   person.run();  //invoke
//   person.breathe();  //invoke
// }

// Constructor
// class Person {
//   final String name;

//   Person(this.name);

//   void printName() {  // instance method
//   print('i will now print the name of the person');
//     print(name);
//   }
// }

// void test() {
//   final aj = Person('ammy john');
//   aj.printName();
// }

// inheritance

// class LivingThing {
//   void breathe() {
//   print('Living thing is breathing');
//   }
//   void move() {
//     print('I am moving');
//   }
// }

// class Cat extends LivingThing {
  
// }
// void test() {
//   final fluffers = Cat();
//   fluffers.move();
//   fluffers.breathe();
// }

// abstract classes

// abstract class LivingThing {
//   void breathe() {
//   print('Living thing is breathing');
//   }
//   void move() {
//     print('I am moving');
//   }
// }

// class Cat extends LivingThing {
  
// }
// void test() {
//   final fluffers = Cat();
// }

// Custom operator

// class Cat extends Object {
//   final String name;
//   Cat(this.name);

//   @override
//   bool operator ==(covariant Cat other) => other.name == name;

//   @override
//   int get hashCode => name.hashCode;

//  }

// void test() {
//   final cat1 = Cat('coco');
//   final cat2 = Cat('coco');
//   if (cat1 == cat2) {
//     print('They are equal');
//   } else {
//     print('They are not equal');
//   }
// }

// extensions

// class Cat {
// final String name;

//   Cat(this.name);
// }

// extension Run on Cat {
//   void run() {
//     print('Cat $name is running');
//   }
// }

// void test() {
//   final meow = Cat('coco');
//   print(meow.name);
//   meow.run();
// }

// extension example

// class Person {
//   final String firstName;
//   final String lastName;
//   Person(this.firstName, this.lastName);
// }

// extension Run on Person {
//  String get fullName => '$firstName $lastName'; //getter
// }

// void test() {
//    final coco = Person('ammy', 'copper');
//    print(coco.fullName);
// }

// future async await

// Future<int> heavyFutureThatMultipliesByTwo(int a) {
//   return Future.delayed(const Duration(seconds: 3), () {
//     return a * 2;
//   });
// }

// void test()  async {
//   final result = await heavyFutureThatMultipliesByTwo(10);
//   print(result);
// }

// Stream

// Stream<String> getName() {
//   return Stream.periodic(const Duration(seconds:  1), (value) {
//     return 'ammy';
//   });
// }

// void test() async {
//   await for(final value in getName()) {
//     print(value);
//   }
//   print('Stream finished working');
// }

//Generator

// Iterable<int> getOneTwoThree() sync*{
  
// }

// void test() {

// }








