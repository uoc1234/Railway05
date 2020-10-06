package com.vti.question2;

import java.util.Random;

public class Program {
	public static void main(String[] args) {

		Random random = new Random();
		Student[] students = new Student[10];

		for (int i = 0; i < students.length; i++) {
			int group = 1 + random.nextInt(3);
//			int group;
//			if (i <= 2) {
//				group = 1;
//			} else if (i <= 5) {
//				group = 2;
//			} else {
//				group = 3;
//			}

			students[i] = new Student(i, "Nguyen van a " + (i + 1), group);
		}

		// b) Kêu gọi cả lớp điểm danh.
		for (Student student : students) {
			student.diemDanh();
		}

		System.out.println("--------------------------------");

		// c) Gọi nhóm 1 đi học bài
		for (Student student : students) {
			if (student.getGroup() == 1) {
				student.hocBai();
			}
		}

		// d) Gọi nhóm 2 đi dọn vệ sinh

	}
}
