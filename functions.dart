

void main(){
print("void main() is the main function of the dart");
 int age=25;
 String name="dela";

//function ---1 calling
int sum=addTwoNum(5,7);
print("This is function to display total of two nubers:$sum");



//function ---1 calling
String display=nameDisplay("dela");
print("this is the function to display name $display");

}



//function ---1
int addTwoNum(int num1,int num2){
  return num1+num2;
}


//function ---2
String nameDisplay(String name){
  return name;
}