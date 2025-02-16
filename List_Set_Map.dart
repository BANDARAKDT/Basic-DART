import 'classCreate.dart';

void main() {
//List

  List<String> names = ['kamal', 'Amal', 'sumal'];

  print(names[1]); //print first index of the list
  names.add(
      'Deshani'); // add element to the list. we can add more than elements too
  names.add('sumal'); // same names can be doublicate in the list
  names[0] = 'hashi'; // update the value of the list element
  print(names);
  print(names.isEmpty);
  print(names.first);
  print(names.length);
  print(names.reversed
      .toList()); // the revers may appear as iterable.. there for we can use toList

//we can add to list
  List<int> no1 = [1, 2, 2, 5, 5, 9];
  List<int> no2 = [4, 5, 8, 9, 6];
  print(no1 + no2);

//we can print all the element by using loop
  for (var element in no2) {
    print(element);
  }

//Set

  Set users = {
    'kamal',
    'amal',
    'sumal',
    78,
    52,
    true
  }; // in a set we can include various types of data types
  Set<String> setNames = {
    'kamal',
    'amal',
    'nimal'
  }; // here we can only use dtrings

  print(setNames);

  setNames.add('deshani');
  setNames.add(
      'amal'); // if we add same existing element to the set it not doublicated

  Set<String> flutterStudent = {'amal', 'kamal', 'nimal', 'Dilshani', 'pubudu'};
  Set<String> reactStudent = {
    'Dilshani',
    'Pubudu',
    'Pathum',
    'Sahan',
    'Tharindu'
  };
  Set<String> allrStudent = flutterStudent.union(reactStudent);
  print(allrStudent); // in here the doublicated values not appear

  Set<String> flutterAndReact = flutterStudent.intersection(reactStudent);
  print(flutterAndReact); //both student who are doind flutter and the react

//Map
  Map<String, dynamic> Deshani = {
    'name': 'Deshani',
    'age': 25,
    'weigth': 45.5,
  };
  print(Deshani.containsKey('name'));
  print(Deshani.containsValue('65'));
  Deshani.addAll(
      {'email': "dela@gmail.com", 'school': "Gankanda Central Collage"});

  Deshani.forEach((key, value) {
    print('$key - $value');
  });

  Deshani.addEntries({MapEntry('email','hashi@gmail.com')});

  print(Deshani['name']); // Access to the name's value
  Deshani['age'] = 30; // update the key's alue

//mapList : we can keep a sets of data in here

  List<Map<String, dynamic>> Students = [
    {'name': 'Deshani', 'grade': 'A'},
    {'name': 'Hashini', 'grade': 'A+'},
    {'name': 'dinuu', 'grade': 'C'}
  ];


Students.forEach((element){
  print('${element['name']}-${element['grade']}');
});

}
