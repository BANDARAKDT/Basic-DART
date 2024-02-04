void main(){
  //integer variables

  int age=25;
  print("my age is $age");

  //String variables

  String name="dela";
  print("my name is $name");


  //boolean variables

  bool isOld=true;
  print("this output may print true or false: $isOld");

  //List
  print("---------concaternate---------");
  List nameList=["dela","dula","pola"];
  List numberList=[1,2,3,4,5,6];
  print(nameList+numberList);

  

  //add or remove element form a list
  print("add dinu name to the name List");
  nameList.add("dinu");
  print(nameList);

print("remove number 2 from numberlist");
 
print(numberList.remove(2));
  print(numberList);

print("get the length of the name List");
print(nameList.length);


}