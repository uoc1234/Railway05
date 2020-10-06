package TestingSystem_Assignment_3;

import java.util.Random;
import java.util.Scanner;

public class EX4 {
	public static void main(String[] args) {
//Question 1
		{System.out.println("-------Question 1 ------");
//		Nhập một xâu kí tự, đếm số lượng các từ trong xâu kí tự đó (các từ có 
//		thể cách nhau bằng nhiều khoảng trắng );
		Scanner scanner = new Scanner(System.in);

		System.out.println("Mời bạn nhập ký tự: ");
		String T1 = scanner.next();
	    int count = T1.length();      
//        for(int i = 0; i < T1.length(); i++) {    
//            String T2 = T1;
//			if(T1.charAt(i) != ' ')    
//                count++;  
			System.out.println("Có tất cả " + count + " ký tự");}
			
//Question 2
			{System.out.println("-------Question 2 ------");		
//			Nhập hai xâu kí tự s1, s2 nối xâu kí tự s2 vào sau xâu s1;
			Scanner scanner = new Scanner(System.in);
			System.out.print("Mời bạn nhập ký ký tự thứ 1: ");
			String T21 = scanner.next();
			System.out.print("Mời bạn nhập ký tự thứ 2: ");
			String T22 = scanner.next();			
			System.out.println(T21 + T22);}
			
//Question 3
			{System.out.println("-------Question 3 ------");	
//			Viết chương trình để người dùng nhập vào tên và kiểm tra, nếu tên chưa 
//			viết hoa chữ cái đầu thì viết hoa lên
			Scanner scanner = new Scanner(System.in);
			System.out.print("Mời bạn nhập tên: ");
			String T3 = scanner.next();
			String FmT3 = T3.toLowerCase();
			System.out.println("Tên lúc đầu là: " + T3);
			System.out.println("Tên chỉnh sửa là: "+FmT3);}

//Question 4
			{System.out.println("-------Question 4 ------");	
//			Viết chương trình để người dùng nhập vào tên in từng ký tự trong tên 
//			của người dùng ra
			Scanner scanner = new Scanner(System.in);
			System.out.print("Mời bạn nhập tên: ");
			String T4 = scanner.next();}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}}