 //importing packages
 import "dart:core";
 import "dart:io";

// starting point of the program
 void main() {
	
	print('Hello 2 World!');
	var fname = "Akash"; //dynamic
	var sname = "Maji"; // dynamic
	int age = 21; //static
	bool boy = true;
	print("Hello" + " " + fname + " " + sname);
	print("You are $age years and is a boy? $boy \n");


	//input and output
	stdout.writeln("Enter your name again: ");
	String name = stdin.readLineSync();
	print("Your name is $name");
	print("The length of name is ${name.length}");


	//insert a blank line
	print("");

	//string vs raw string

	String s1 = "This is a string \n This is is new line";
	String s2 = r"This is a raw string \n This is on same line";
	print(s1);
	print(s2);


	//parsing

	// String to int
	int num = int.parse("23");

	assert(num == 23, "Assertion error:");  // but why?   /// use '--enable-asserts' option

	// String to double
	double num2 = double.parse("2.34");
	assert(num2 == 2.34); //why this assertion passed (option is disabled)

	print("Both assertions are true");
	print("");

	// int or double to String

	String one = 1.toString();
	String pi = 3.1412.toStringAsFixed(2); //fixxed precision
	print(one);
	print(pi);


	print("");
	//default values => null

	int a;
	bool b;
	String c;
	double d;
	print(a);
	print(b);
	print(c);
	print(d);

   	print("");
	//consts and type checking at suntime

	const sum = 123;
	const all = "All";
	const some = true;

	print(sum);
	print(all);
	print(some);

	print(sum.runtimeType);
	print(all.runtimeType);
	print(some.runtimeType);

	print("");

	var n = Num();
	int number;
	if (n != null){
	    number = n.num;
	}
	print(number);

	var m = Num();
	int mumber;

	mumber = m?.num; // if m is a valid not null object, get its 'num' attribute
	print(mumber);

	//alternate if else

	var p = Num();
	int q;

	q = p?.num ??0; // if p is nulll then assign 0
	print(q);

	/* Analogous to
	if (p != null){
	 q = p.num;
	}else {
	 q = 0;
	}
	*/

	//interesting
	print("");
	int x;
	int y;
	 y = x ??= 100;
	 print(x);
	 print(y);

	int z;
    	print(z);
	print(z ??=123);
	print(z);

	// is operator
	br();
	var w = 100;
	if (w is int){
	print("w is int");
	}
    
	br();
	var xy = 20 % 2 == 0 ? "Even" : "Odd";
	print(xy);

	// if else-if else
	// switch

	//for loops => standard for; for in; for each

	for(int i = 0; i < 10; i++){
	   print("The num is $i");
	}
	var arr = [1, 2, 3, 4, 5,];
	for (var i in arr){
		print("Arr elem: $i");
	}

	// many ways
	arr.forEach((n) => {print("The number is $n.")});
	arr.forEach((n) => print(n));

	arr.forEach(function); //pass a reference to a func object

	// continue and bbreak
	stdout.writeln("Enter a limit: ");
    	int limit = int.parse(stdin.readLineSync());

	for(int i = 0; i < limit; i++){
	 if(i % 2 == 0)continue;
	 print("Odd: $i");
	
	}


	// Colllections:List, Set, maps
	// List
    	br();
	List<int> ages = [21, 23, 56, 78, 19];
	//print List
	print(ages);
	// print item by item
	for(var age in ages){
	   print("Age is $age");
	}

	List<Object> objs = [1, 2.4, true, "hello", ages];
	for(var obj in objs){
		print(obj);
	}
	//acccess and updating by indexing (0 based)
	for(var i = 0; i < objs.length; i++){
		print("Index $i: ${objs[i]}");
		objs[i] = i * i + 2 * i + 5;
		print("Index $i: ${objs[i]}");

	}


	// dynamically known List
	var ls = ["Sindhu", "ghati", "sabhyata"];
	ls.forEach((item) => print(" $item") );

	var ys = [1, 2.4, true, "hello", ages];
	ys.forEach((item) => print("Item: $item") );
    
	br();


   // cloning an array: simple assignment doessn't work
	var arr1 = [1, 2, 3.4, false, "str", arr];
	for(var i in arr1){
		print("Arr1 elem: $i");
	}
	var arr2 = arr1;
	arr1[0] = 'i am changed';
	
	for(var i in arr2){
		print("Arr2 elem: $i");
	}

	// use ... operator(spread operator) and use , if nessary to add more items

   	var arr3 = [...arr1, ...arr2];
   	for(var i in arr3){
		print("Arr3 elem: $i");
	}


	// const lists: can't change its value
	var arr4 = const [1, 1, 2, 3, 4, 5, 6];
	//arr4[0] = 0; //this wont work
	for(var i in arr4){
		print("Item: => $i");
	}

	//sets in dart
	br();

	var myset = {"chlorine", "fluorine" "iodine", "fluorine"};
	for(var halogen in myset){
		print(halogen);
	}

	//how can we declare empty set?

	var mySet = {}; //this is declaring map, not set? why?
	print(mySet.runtimeType);

	//use static typing at type constructor
	var mySetAgain = <String> {}; //explicity specifying type
	print(mySetAgain.runtimeType);

    //use static typing at type declaration
	Set<String> mySetAgain2 = {}; //explicity specifying type
	print(mySetAgain2.runtimeType);


	//Maps in dart

   	br();
   // declare non-empty map
	var mymap = {
	1: "One",
	2: "Two",
	3: "Three",
	4:  "Four",
	};
	//can we add?
	mymap[5]= "Five";
    
	//print a map
	print(mymap);
   //print type
   	print(mymap.runtimeType);

   //another way of declaring a map;
   	var mymap2= Map(); //using 'Map' class
   	mymap2["red"] = "0xff0000";
   	mymap2["green"] = "0x00ff00";
   	mymap2["blue"] = "0x0000ff";
   	print(mymap2);

   // how can we declare an empty map
   //way 1
   var emptymap1 = Map();
   //way 2
   var emptymap2 = {};
   //print to check 
   print(emptymap1);
   print(emptymap2);


   br();
   //functions: invocation and declaration
   echo("I am a custom function");
   printf("I am a function calling a function");

   echo(square(6));
   echo(square(6.9));
   
   // composition of function
   echo(square(square(5)));
  
  ////generates an error: string cant be multiplied
  // echo(square("error"));


  //Higher order functions
  //They take func as arg or return func as value or Both
   br();
  var items = [1, 2, 3];
  items.forEach(echo);

  //Arrow function
  br();
  print(polynomial(3, 2, 1));

  //Anonymous func
  br();
  items.forEach(
  (num){
   echo(num);
  }
  );
   /*
  // error: forEach takes 1 positional arg, 2 given
  items.forEach(
  (num1, num2){
   echo("$num1 <--> $num2");
  }
  */
  	br();
  	//positional args
  	print(polynomial(1, 2, 3)); // 3*1*1+2*2+3

 	//optional named args
 	print(add(51, b: 49)); //b is named
 	print(add(101));  // 101 + 0(0 is given inside func when second arg is not given) 
 	print(sub(12)); // 12 - 2(2 is optional)

	br();
 	sendMail("src@mail", "dest@mail", 8080, "UDP");
	sendMail("src@mail", "dest@mail", 3306);


  br();
  Person per = Person("Akash", 22, 700.0, true); //1st const
  per.showDetails(); //nulls when there is no constructor

  //br();
  //Person per2 = Person("Akaahh", 21);
  //per2.showDetails();

  br();
  var emp = Emp("Akash Maji", 21, false);
  emp.showDetails();

  //final vs const
  //they behave same outside class
  //when used as attributes they beahev different
  br();
  // final finalNum;   //cant use this, must assign at declaration
  final finalNum = 11;

  // const constNum;
  const constNum = 22;

  print("$finalNum  $constNum");

  br();
  Name jack = Name("Jack");
  jack.show();
  // jack.name = "jackie"; //cant modify final variable
  Name jill = Name("Jill");
  jill.show();

  print("Is Name object living: ${Name.living}"); //can be accessed by class name only
  

  	br();
  	var valid;
  	var response = getResponse();

  	try{
    	valid = isValid(response);
  	}catch(e){
   		print(e);
  	}finally{
  
  		if(valid != null){
  	 	print("Page is viewed");
  		}else{
  	 	print("Page cant be loaded");
  		}
        }

	br();
	var car = Car("suv", 4, 20000.90);
	car.details();



}

class Vehicle{
	String type;
	int wheels;
	Vehicle(this.type, this.wheels);

	void details(){
		print("Vehicle:\nType:$type\nWheels:$wheels");
	}


}

class Car extends Vehicle{ //inherit from Vehicle
	double price;
	Car(var type, var wheels, [ this.price = 0.0]): super(type, wheels);

	@override
	void details(){
	super.details();
	print("Price:$price");
	}



}

int getResponse(){
//some logic
  return 404;
}

bool isValid(var resp){

if(resp == 404)
throw Exception("Page not found error");

if(resp >= 500)  //server error
	return false;
if(resp >= 200) 
	return true;
return false;
}

class Name{

final name;   //final is instance variable; no var keyword
static const bool living = true;  //const has to static, its class variable; var keyword optional

Name(this.name);

show(){
print("Name object:\nName:$name\nLiving:$living");
}




}

class Person{
  String name;
  int age;
  double salary;
  bool single;

  Person(var name, var age, var salary, var single){
  this.name = name;
  this.age = age;
  this.salary = salary;
  this.single = single;
  print("Person created");
  }
  ////cant declare in same scipe
  //Person(this.name, this.age, [this.single = true]);

  void showDetails(){
  print("Person:\nName:$name\nAge:$age\nSalart:$salary\nSingle:$single");
  
  }

}

class Emp{
  String name;
  int age;
  double salary;
  bool single;

  
  //can be done if only assignment of properties is needed
  Emp(this.name, this.age, [this.single = true]);

  void showDetails(){
  print("Emp:\nName:$name\nAge:$age\nSalart:$salary\nSingle:$single");
  
  }

}

sendMail(var src, var dest, [int port = 80, String proto = "TCP"]){
 print("mail sent from $src to $dest at port: $port via $proto protocol");

}

dynamic sub(var a, {var b = 2}) => a - b;
dynamic add(var a, {var b}) { 
return a + (b??0); 
}
dynamic polynomial(var a, var b, var c) => 3*a*a+2*b+c;

void echo(var text){
 print(text);
}

// ommiting return type
printf(var text){
 echo(text);
}

//what if return type is dynamic: var?
// use dynamic, not var for returntypes of funcation
dynamic square(var num){
 return num * num;
 
}

void function(int i){
print("Elem: $i");
}

void br(){
  print("");
}

class Num{
  int num = 10;
}

// Inline comment

/*
Multiline comment
*/

/// Documentation