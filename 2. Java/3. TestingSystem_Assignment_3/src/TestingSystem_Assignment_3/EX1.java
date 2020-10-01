package TestingSystem_Assignment_3;

import java.util.Random;
import java.util.Scanner;

public class EX1 {
	public static void main(String[] args) {
//Question 1
		System.out.println("-------Question 1 ------");

		float luong1 = 5240.5f;
		float luong2 = 10970.055f;
		int luong12 = (int) luong1;
		int luong22 = (int) luong2;
		System.out.println(luong12);
		System.out.println(luong22);

//Question 2
		System.out.println("-------Question 2 ------");
//Lấy ngẫu nhiên 1 số có 5 chữ số (những số dưới 5 chữ số thì sẽ thêm có số 0 ở đầu cho đủ 5 chữ số)
		Random random = new Random();
		int randomnumber2 = random.nextInt(10000);

		int count = 0, num = randomnumber2;
		while (num != 0) {
			num /= 10;
			++count;
		}
		String so0 = "0";
		String repeated = so0.repeat(5 - count);
		System.out.println(repeated + randomnumber2);

//Question 3
		System.out.println("-------Question 3 ------");
//Lấy 2 số cuối của số ở Question 2 và in ra.
		String randomnumber3 = Integer.toString(randomnumber2);
		int c = randomnumber2 / 100;
		int c100 = c * 100;
		int last2 = randomnumber2 - c100;
		System.out.println(last2);

//Question 4
		System.out.println("-------Question 4 ------");
//Viết 1 method nhập vào 2 số nguyên a và b và trả về thương của chúng
		Scanner scanner = new Scanner(System.in);
		System.out.print("mời bạn nhập số a ");
		int a = scanner.nextInt();
		System.out.print("mời bạn nhập số b ");
		int b = scanner.nextInt();

		int xx = a / b;
		System.out.println("thuong la: " + xx);

		scanner.close();

	}
}