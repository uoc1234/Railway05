package TestingSystem_Assignment_2;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.Scanner;

public class EX5 {
	public static void main(String[] args) {

//Question 1
		System.out.println("-------Question 1 ------");
//		Viết lệnh cho phép người dùng nhập 3 số nguyên vào chương trình
		Scanner scanner = new Scanner(System.in);
		int[] numbers = new int[3];
		System.out.print("mời bạn nhập 3 số nguyên");
		for (int i = 0; i < 3; i = i + 1) {
			System.out.println("mời bạn nhập số thứ " + (i + 1));
			numbers[i] = scanner.nextInt();
		}
		for (int i = 0; i < numbers.length; i++) {
			System.out.print(numbers[i] + ";");
		}
		scanner.close();

		// Question 2
		System.out.println("-------Question 2 ------");
//		Viết lệnh cho phép người dùng nhập 2 số thực vào chương trình
		Scanner scanner2 = new Scanner(System.in);
		float[] numbers2 = new float[3];
		System.out.print("mời bạn nhập 2 số thực");
		for (int e = 0; e < 3; e = e + 1) {
			System.out.println("mời bạn nhập số thứ " + (e + 1));
			numbers[e] = (int) scanner2.nextFloat();
		}
		for (int e = 0; e < numbers.length; e++) {
			System.out.print(numbers[e] + ";");
		}
		scanner2.close();

		// Question 3
		System.out.println("-------Question 3 ------");
//		Viết lệnh cho phép người dùng nhập họ và tên
		Scanner scanner3 = new Scanner(System.in);
		String T1 = scanner3.next();
		System.out.print("mời bạn nhập họ: ");
		String T2 = scanner3.next();
		System.out.print("mời bạn nhập tên: ");
		System.out.print("Tên đầy đủ của bạn là: ");
		scanner3.close();

//Question 4
		System.out.println("-------Question 4 ------");
//				Viết lệnh cho phép người dùng nhập vào ngày sinh nhật của họ			
		Scanner scanner4 = new Scanner(System.in);
		String Q4 = scanner4.next();
		System.out.println("Nhập vào ngày sinh của bạn");
		String fomatdate4 = "yyyy/MM/dd";
		SimpleDateFormat dateFormat = new SimpleDateFormat(fomatdate4);
//				Date out = Q4.fomat(dateFormat) ;
//				LocalDate out = LocalDate.ofEpochDay(Q4);
//				System.out.println("Dữ liệu bạn nhập vào là: " + out);

//Question 5
		System.out.println("-------Question 5 ------");
//	
//				Viết lệnh cho phép người dùng tạo account (viết thành method)
//				Đối với property Position, Người dùng nhập vào 1 2 3 4 5 và vào 
//				chương trình sẽ chuyển thành Position.Dev, Position.Test, 
//				Position.ScrumMaster, Position.PM

//Question 6
//		System.out.println("-------Question 6 ------");
////				Viết lệnh cho phép người dùng tạo department (viết thành method
//
//		public static void Department() 
//			Scanner scanner6 = new Scanner(System.in);
//			System.out.println("Moi ban nhap ten department muon tao");
//			String department = scanner6.nextLine();
//	

//Question 7
		System.out.println("-------Question 7 ------");
//				Nhập số chẵn từ console
		System.out.println("Nhập số chẵn: ");
		int number = scanner.nextInt();
		if (number % 2 == 0) {
			System.out.println("Input: " + number);
		} else {
			System.out.println("sai");
		}
//Question 8
		System.out.println("-------Question 8 ------");

//		Viết chương trình thực hiện theo flow sau:
//			Bước 1: 
//			Chương trình in ra text "mời bạn nhập vào chức năng muốn sử 
//			dụng"
//			Bước 2: 
//			Nếu người dùng nhập vào 1 thì sẽ thực hiện tạo account
//			Nếu người dùng nhập vào 2 thì sẽ thực hiện chức năng tạo 
//			department
//			Nếu người dùng nhập vào số khác thì in ra text "Mời bạn nhập 
//			lại" và quay trở lại bước 1	

	}
}
