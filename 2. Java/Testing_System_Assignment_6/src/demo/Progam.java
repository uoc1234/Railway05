package demo;

public class Progam {
public static void main(String[] args) {
	
	try {
		float result = divide(7, 0);
		System.out.println(result);
	} catch (Exception e) {
		System.out.println("cannot divide 0");// TODO: handle exception
	}	
}
public static float divide(int a, int b) {
	return a / b;
}





}



