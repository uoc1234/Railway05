package TestingSystem_Assignment_2;

import java.util.Date;
import java.util.Locale;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class EX2 {
	public static void main(String[] args){
		
		
		
//Question 1
				System.out.println("-------Question 1 ------");
//				Khai báo 1 số nguyên = 5 và sử dụng lệnh System out printf để in ra số 
//						nguyên đó
int x =5;
System.out.println(x);
	



//Question 2
				System.out.println("-------Question 2 ------");	
//				Khai báo 1 số nguyên = 100 000 000 và sử dụng lệnh System out printf để in 
//						ra số nguyên đó thành định dạng như sau: 100,000,000
int b = 100000000;
System.out.printf(Locale.US, "%,d%n", b);
	



//Question 3
System.out.println("-------Question 3 ------");	
//Khai báo 1 số thực = 5,567098 và sử dụng lệnh System out printf để in ra số 
//thực đó chỉ bao gồm 4 số đằng sau	
float t = (float)5.567098;
System.out.printf("%.4f%n",t);




//Question 4
System.out.println("-------Question 4 ------");	
//Khai báo Họ và tên của 1 học sinh và in ra họ và tên học sinh đó theo định 
//dạng như sau:
//Họ và tên: "Nguyễn Văn A" thì sẽ in ra trên console như sau: 
//Tên tôi là "Nguyễn Văn A" và tôi đang độc thân.
String ten = "Nguyễn Văn A";
System.out.println("Tên tôi là : " +ten+ " và tôi đang độc thân" );




//Question 5
System.out.println("-------Question 5 ------");	
//Lấy thời gian bây giờ và in ra theo định dạng sau:
//24/04/2020 11h:16p:20s
LocalDateTime q5 = LocalDateTime.now();
DateTimeFormatter qq5 = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
String inra = q5.format(qq5);
System.out.println(inra);




//Question 6
System.out.println("-------Question 6 ------");	
//In ra thông tin account (như Question 8 phần FOREACH) theo định dạng 
//table (giống trong Database)
System.out.println("Đã làm ở trong EX1");
	
	}
}
