package Extra1_Assignment_2;

import java.util.Scanner;

public class Exercise_3 {
	public static void main(String[] args) {

// Question 1
		System.out.println("-------Question 1 ------");

		Scanner scanner = new Scanner(System.in);
		int[] numbers = new int[3];
		System.out.print("mời bạn nhập số n");
		for (int i = 0; i < numbers.length; i++) {
			System.out.print(numbers[i]*numbers[i+1]);
		}
		scanner.close();

	}
}