package backend;

import java.io.File;
import java.io.IOException;

public class Exercise3 {
	public static void main(String[] args) throws IOException {
		question1();
		question2();
		question4();
	}

	public static void question1() {
//		Check File is exists
//		Tạo 1 method có đầu vào là String path để check xem path đó có tồn 
//		tại hay không.

		File file = new File("C:\\Users\\pc\\Desktop\\Test.txt");
		if (file.exists()) {
			System.out.println("file is exists!");
		} else {
			System.out.println("file is not exists!");
		}
	}

//		Create new file
//	Tạo 1 method để có thể tạo được file.

	public static void question2() throws IOException {
		File file = new File("C:\\Users\\pc\\Desktop\\newFile.txt");
		if (file.createNewFile()) {
			System.out.println("Creat Successfuly!");
		} else {
			System.out.println("Creat Fail!");
		}
	}

//	question4
//		 Delete file
//		 Tạo 1 method để có thể delete file

	private static void question4() {
		File file = new File("C:\\Users\\pc\\Desktop\\Test.txt");
		if (file.exists()) {
			File myObj = new File("C:\\Users\\pc\\Desktop\\Test.txt"); 
			myObj.delete();
			System.out.println("Deleted the file: " + myObj.getName());
		}else {
			System.out.println("Error! File Not Exist");
	}		
}
	
//	question5
//	Check path is File or Folder 
//	Tạo 1 method để kiểm tra xem path có thể là File hay Folder	
	private static void question5() {
		File file = new File("C:\\Users\\pc\\Desktop");
		if (file.exists()) {
			System.out.println(file.isDirectory() ? "đây là folder" : "đây là file");
		}else {
			System.out.println("tập tin không tồn tại!")	;
		}	
	}
//	question6
//	Get all File name of Folder 
//	 Tạo 1 method để lấy ra tất cả các tên file trong 1 Folder.	
	private static void question6() {
		File file = new File("C:\\Users\\pc\\Desktop");
		for (String list : file.list()) {
			System.out.println("Những file được lấy ra là: " + list);
		}
	}

//	question6
//	Tạo 1 method để copy file
	private static void question7() {
		
	}
	
	
	
	
}
	
	
