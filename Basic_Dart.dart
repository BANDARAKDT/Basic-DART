//--------- (01) Main function :
                  /*The main()function is a predefined method in Dart. It is the most important and mandatory part of any Dart program.Any dart script required the main() method for its execution.This method acts as the entry point for any Dart application.*/

void main(){
  print("This is the function body of the main function");
  variablestypes();
  task();
}


//-------- (02) data types : 
            /*  int(num) =45
                double(num)=3.145
                bool= true / false
                String = "hello"+ 'wolrd'
                dynamic = 45 / 3.145/ true / 'hello'   [can store any tipe of data]
            */
 

//-------- (03) Variable : A location in memory that is set aside to store information required by the program.

void variablestypes(){ 
                 String name ="Deshani Bandara"; 
                 int age = 25;
                 bool isProfileLocked =true;
                 dynamic others = "hellow";

                 /*there are two types to concatanate a string
                                      1.string concatinate 
                                      2.String interpolate   */ 

                 String fullName= name+ " "+ others;     // string concatinate 
                 String username = 'My name is $name and $others everyone';      // string interpolate
                
                 print(name);
                 print(age);
                 print(isProfileLocked) ;
                 print(name.isEmpty);
                 print(others.toString());
                 print(fullName);
                 print(username);
                 }


// ----------- (04) task

void task(){
  String name= "Nimal";
  int age =25;
  String city ='Ratnapura';

  print('my name is ${name.toUpperCase()}I am from $city. i am $age years old');
}
             
 






