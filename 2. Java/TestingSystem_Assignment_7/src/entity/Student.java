package entity;

public class Student {
	private int id;
	private String name;
	private static String college;
	private static int moneygroup;

	public void Account() {
	}

	public Student(int id, String name) {

		this.id = id;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public static String getCollege() {
		return college;
	}

	public static int getMoneygroup() {
		return moneygroup;
	}

	public static void setMoneygroup(int moneygroup) {
		Student.moneygroup = moneygroup;
	}

	public static void setCollege(String college) {
		Student.college = college;
	}
public String toString;
}
