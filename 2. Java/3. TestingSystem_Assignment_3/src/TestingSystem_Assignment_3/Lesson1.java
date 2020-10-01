package TestingSystem_Assignment_3;

import java.time.LocalDate;
import java.util.Iterator;

public class Lesson1 {
	public static void main(String[] args) {
// Question 1
//		Khai báo 2 số lương có kiểu dữ liệu là float.
//		Khởi tạo Lương của Account 1 là 5240.5 $
//		Khởi tạo Lương của Account 2 là 10970.055$
//		Khai báo 1 số int để làm tròn Lương của Account 1 và in số int đó ra
//		Khai báo 1 số int để làm tròn Lương của Account 2 và in số int đó ra

		float luong1 = 5240.5f;
		float luong2 = 10970.055f;
		int luong12 = (int) luong1;
		int luong22 = (int) luong2;
		System.out.println(luong12);
		System.out.println(luong22);

		Account[] account = new Account[5];

		for (int i = 0; i < account.length; i++) {
			account[i] = new Account();
			account[i].email = "email" + (i + 1);
			account[i].username = "username" + (i + 1);
			account[i].fullname = "fullname" + (i + 1);
//	account[i].createDate = 
			System.out.println(account[i].email);
			System.out.println(account[i].fullname);
			System.out.println(account[i].username);

		}

	}
}
