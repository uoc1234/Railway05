package TestingSystem_Assignment_3;

import java.util.Random;
import java.util.Scanner;

public class EX2 {
	public static void main(String[] args) {
//Question 1
		System.out.println("-------Question 1 ------");
//		Không sử dụng data đã insert từ bài trước, tạo 1 array Account và khởi 
//		tạo 5 phần tử theo cú pháp (sử dụng vòng for để khởi tạo):
//			  Email: "Email 1"
//			  Username: "User name 1"
//			  FullName: "Full name 1"
//			  CreateDate: now
		Account[] account = new Account[5];

		for (int i = 0; i < account.length; i++) {
			account[i] = new Account();
			account[i].email = "email" + (i + 1);
			account[i].username = "username" + (i + 1);
			account[i].fullname = "fullname" + (i + 1);
			System.out.println(account[i].email);
			System.out.println(account[i].fullname);
			System.out.println(account[i].username);
		}
	}
}