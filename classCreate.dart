void main(){



  //create object in main class----1
  print("-------create objects--------");
  Student stu=new Student();
  stu.age=25;
  stu.name="dela";
  stu.logIn();




  //create object ------2
  Student stu2=new Student();
  stu2.age=42;
  stu2.name="hashi";
  stu2.logIn();

  stu.logOut(42);


  stu.logOut(25);
}


//------------class 1------------
class Student{
  //String name; null values cant be there
  //int age; null values cant be there
  //there for use following method to create


  String ?name;
  int ?age;


//method-----------------1
  void logIn(){
    print("$name is now log in to the system");
  }


  //method ---------------2

  void logOut(int age){
    if(age>25){
      print("$name has been loged out");
    }
  }




}