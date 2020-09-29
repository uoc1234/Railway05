package Extra1_Assignment_2;

import java.util.Scanner;

public class Exercise_1 {
	public static void main(String[] args) {

// Question 1
		System.out.println("-------Question 1 ------");
//		Viết chương trình nhập vào một số thực. Đơn vị tính cho số này là centimet 
//		(cm).
//		Hãy in ra số tương đương tính bằng foot (số thực, có 2 số lẻ thập phân) và inch 
//		(số thực, có 2 số lẻ thập phân).
//		Với 1 inch = 2.54 cm và 1 foot = 12 inches.
	Scanner scanner = new Scanner(System.in);
	System.out.println("Nhap độ dài (cm) : ");
	double cm = scanner.nextDouble();
	System.out.println("Độ dài (inch) là: " + cm / 2.54);
	System.out.println("Độ dài (foot) là: " + 12 * (cm / 2.54));
	scanner.close();
//Question 2
	System.out.println("-------Question 2 ------");
//		Viết chương trình nhập vào số giây từ 0 tới 68399, đổi số giây này thành dạng 
//		[giờ:phút:giây], mỗi thành phần là một số nguyên có 2 chữ số. 
	Scanner scanner2 = new Scanner(System.in);
	System.out.println("Nhap số giây: ");
	int second = scanner2.nextInt(68399);
	int hours = second / 3600;
	int minutes = (second % 3600) / 60;
	int seconds = second % 60;

	System.out.format("%02d:%02d:%02d", hours, minutes, seconds);
	scanner2.close();

//Question 3
	System.out.println("-------Question 3 ------");
//			Viết chương trình nhập vào 4 số nguyên.
//			Hiển thị ra số lớn nhất và nhỏ nhất
	Scanner scanner3 = new Scanner(System.in);
	int[] numbers = new int[4];
	System.out.print("nhập vào 4 số nguyên");
	for (int i = 0; i < numbers.length; i++) {
		System.out.print("nhập số nguyên thứ " + (i + 1) + ":");
		numbers[i] = scanner3.nextInt();
	}
	int max = numbers[0];
	int min = numbers[0];

	for (int i = 0; i < 4; i++) {
		if (numbers[i] < min) {
			min = numbers[i];
		} else if (numbers[i] > max) {
			max = numbers[i];
		}
	}
	System.out.print("\n số nguyên nhỏ nhất là " + min);
	System.out.print("\n số nguyên lớn nhất là là " + max);
	scanner3.close();

//Question 4
	System.out.println("-------Question 4 ------");
//			Nhập vào hai số tự nhiên a và b. Tính hiệu của hai số đó. 
//			Nếu hiệu số lớn hơn 0 thì in ra dòng chữ [Số thứ nhất lớn hơn số thứ hai]. 
//			Nếu hiệu số nhỏ hơn 0 thì in ra dòng chữ [Số thứ nhất nhỏ hơn số thứ hai].
	Scanner scanner4 = new Scanner(System.in);
	System.out.println("nhập vào 2 số tự nhiên");
	System.out.print("nhập số a: ");
	int a = scanner4.nextInt();
	System.out.print("nhập số b: ");
	int b = scanner4.nextInt();
	int hieu = a - b;
	if (hieu > 0) {
		System.out.println("Số thứ nhất lớn hơn số thứ hai " + hieu + "đơn vị");
	} else if (hieu < 0) {
		System.out.println("Số thứ nhất nhỏ hơn số thứ hai " + hieu + "đơn vị");
	}
	scanner4.close();
//Question 5
	System.out.println("-------Question 5 ------");
//				Nhập vào 2 số tự nhiên a và b. Kiểm tra xem a có chia hết cho b không
	Scanner scanner5 = new Scanner(System.in);
	System.out.println("nhập vào 2 số tự nhiên");
	System.out.print("nhập số thứ x: ");
	int x = scanner5.nextInt();
	System.out.print("nhập số thứ y: ");
	int y = scanner5.nextInt();
	int thuong = x % y;
	if (thuong == 0) {
		System.out.println("x chia hết cho y");
	} else if (thuong != 0) {
		System.out.println("x không chia hết cho y");
		scanner5.close();

//Question 6
		System.out.println("-------Question 6 ------");

		Scanner scanner6 = new Scanner(System.in);
		System.out.println("Nhập vào điểm của 3 muôn học");
		System.out.print("Điểm môn toán: ");
		int toan = scanner6.nextInt();
		System.out.println("Điểm môn lý: ");
		int ly = scanner6.nextInt();
		System.out.println("Điểm môn hóa: ");
		int hoa = scanner6.nextInt();
		int tb = (toan * 2 + ly + hoa) / 4;
		System.out.println("điểm trung bình 3 môn là : " + tb);
		if (tb >= 9) {
			System.out.println("Loại xuất sắc");
		} else if (tb >= 8) {
			System.out.println("Loại giỏi");
		} else if (tb >= 7) {
			System.out.println("Loại khá");
		} else if ( tb >= 6) {
			System.out.println("Loại trung bình khá");
		} else if (tb >= 5) {
			System.out.println("Loại trung bình");
		} else if (tb < 5) {
			System.out.println("Loại kém");
		}

	}


		
	}
}