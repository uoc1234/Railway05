package TestingSystem_Assignment_2;

import java.time.LocalDate;
import java.util.Locale;
import java.util.Random;
import java.util.Scanner;



public class EX4 {
	public static void main(String[] args) {
		
		
//Question 1
		System.out.println("-------Question 1 ------");
//		In ngẫu nhiên ra 1 số nguyên
		Random random = new Random();
		int x = random.nextInt();
		System.out.println(x);
		
		
//Question 2
		System.out.println("-------Question 2 ------");
//		In ngẫu nhiên ra 1 số thực 
		float y = random.nextInt();
		System.out.println(y);
		
		
//Question 3
		System.out.println("-------Question 3 ------");
//		Khai báo 1 array bao gồm các tên của các bạn trong lớp, sau đó in ngẫu nhiên 
//		ra tên của 1 bạn	

		String[] name = { "Ten_1", "Ten_2", "Ten_3", "Ten_4" };
		int t = random.nextInt(name.length);
		System.out.println(name[t]);

		
		
//Question 4
		System.out.println("-------Question 4 ------");
//		Lấy ngẫu nhiên 1 ngày trong khoảng thời gian 24-07-1995 tới ngày 20-12-1995
		int minday = (int) LocalDate.of(1995, 7, 24).toEpochDay();
		int maxday = (int) LocalDate.of(1995, 12, 20).toEpochDay();
		long randomInt = minday + random.nextInt(maxday - minday);
		LocalDate randomDay = LocalDate.ofEpochDay(randomInt);
		System.out.println(randomDay);

		
//Question 5
		System.out.println("-------Question 5 ------");
//		Lấy ngẫu nhiên 1 ngày trong khoảng thời gian 1 năm trở lại đây
		
		int e = random.nextInt(365);
		int maxday2 = (int) LocalDate.now().toEpochDay();
		long randomInt2 = maxday2 - e;
		LocalDate randomDay2 = LocalDate.ofEpochDay(randomInt2);
		System.out.println(randomDay2);
		
		
//Question 6		
		System.out.println("-------Question 6 ------");
//		Lấy ngẫu nhiên 1 ngày trong quá khứ
		int now6 = (int)LocalDate.now().toEpochDay();
		int x6 = random.nextInt(now6);
		long longdaterandom = now6 - x6;
		LocalDate	randomDay6 = LocalDate.ofEpochDay(longdaterandom);
		System.out.println(randomDay6);
		
//Question 7		
		System.out.println("-------Question 7 ------");	
//		Lấy ngẫu nhiên 1 số có 3 chữ số
int randomnumber7 = random.nextInt(999-100+1)+100;
System.out.println(randomnumber7);
		
		
		
		
		
		
		
		
		
		
		
		
//		Question 3: 
//			Viết lệnh cho phép người dùng nhập họ và tên
	Scanner scanner = new Scanner (System.in);
	System.out.print("Họ của bạn là: ");
	

	}
}
