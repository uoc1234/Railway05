package TestingSystem_Assignment_3;

import java.util.Random;
import java.util.Scanner;

public class EX3 {
	private static final String Interger = null;

	public static void main(String[] args) {
//Question 1
		System.out.println("-------Question 1 ------");
//		Khởi tạo lương có datatype là Integer có giá trị bằng 5000.
//		Sau đó convert lương ra float và hiển thị lương lên màn hình (với số 
//		float có 2 số sau dấu thập phân) 
		int luong = 5000;
		float converluong = (float) luong;
		String converluong2 = String.format("%.2f", converluong);
		System.out.println(converluong2);
//Question 2
		System.out.println("-------Question 2 ------");
//		Khai báo 1 String có value = "1234567"
//		Hãy convert String đó ra số int
		String sodangchu = "1234567";
		int convertso2 = Integer.parseInt(sodangchu);
		System.out.println(convertso2);
//Question 3
		System.out.println("-------Question 3 ------");
//		Khởi tạo 1 số Integer có value là chữ "1234567"
//		Sau đó convert số trên thành datatype int
		Integer so3 = new Integer(1234567);
		Integer intobject = 1234567;
		int convertso3 = intobject.intValue();
		System.out.println("The integer Value of so3 = " + convertso3);

	}
}