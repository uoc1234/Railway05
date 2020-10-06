package TestingSystem_Assignment_3;

public class Department {
byte id;
String name;

}
@Override
public String toString() {
	String result = "";
	result += "ID là: " + id +"\n";
	result	+= "Name là: " + name;
	return super.toString();