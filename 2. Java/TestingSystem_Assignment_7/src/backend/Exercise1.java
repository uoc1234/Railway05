package backend;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import entity.Student;

public class Exercise1 {
	public static void main(String[] args) {
		question1();
	}
	public static void question1(){
//		List<Student> students = new ArrayList<>();
		Student student1 = new Student(1, "Nguyễn Văn A");
		Student student2 = new Student(2, "Nguyễn Văn B");
		Student student3 = new Student(3, "Nguyễn Văn C");
		Student.setCollege("Đại học bách khoa");
		Student[]student = {student1,student2, student3 };
		
//		System.out.println(student3.getCollege());
		for (int i = 0; i < student.length; i++) {
			System.out.println("ID của học sinh thứ " + (i+1) + " là " + student[i].getId());
			System.out.println("Tên của học sinh thứ " + (i+1) + " là " + student[i].getName());
			System.out.println("Trường đại học: "+student[i].getCollege());
			System.out.println("--------------");
		}
		Student.setCollege("Đại học công nghệ");
		for (int i = 0; i < student.length; i++) {
			System.out.println("ID của học sinh thứ " + (i+1) + " là " + student[i].getId());
			System.out.println("Tên của học sinh thứ " + (i+1) + " là " + student[i].getName());
			System.out.println("Trường đại học: "+student[i].getCollege());
			System.out.println("--------------");
	}
		}
	public static void question2(){
		List<Student> students = new ArrayList<>();
		Student student1 = new Student(1, "Nguyễn Văn A");
		Student student2 = new Student(2, "Nguyễn Văn B");
		Student student3 = new Student(3, "Nguyễn Văn C");
		Student.setCollege("Đại học bách khoa");
		Student[]student = {student1,student2, student3 };
		int a = student.length;

	Student.setMoneygroup(100000*a);
	System.out.println("Qũy lớp hiện tại là: " );
	}
	public static void question3(){
		//class MyMath
	}
	
	
	
	
	
	
	
	
}
		
		
		
		
		
