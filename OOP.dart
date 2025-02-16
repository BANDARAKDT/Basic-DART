/*
Dart is an Object Oriented Programming Language.
*/



class OOP{
  String name = 'kamal';
  int mark1= 50;
  int mark2= 100;


  /* Constructor => it is a function| no return type | constructor name should be the class name
      
*/

OOP(String name,int age){
    //this.name=name;
    //this.age=age;
  //this is the constructor
  //in dart compiler if the constructor is not defined it is automatically generated

}

  int total()=> mark1+mark2;
double average(){
 return total()/2;
}


 }


void main(){
  OOP student1= new OOP("Deshani", 54);     // create object
  student1.name="Dela";
  student1.mark1=100;
  student1.mark2=10;

  print(student1.name);
  print(student1.total());
}