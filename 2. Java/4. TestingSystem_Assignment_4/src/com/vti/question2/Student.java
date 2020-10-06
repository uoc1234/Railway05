package com.vti.question2;

public class Student implements IStudent {

	private int id;
	private String name;
	private int group;

	public Student(int id, String name, int group) {
		this.id = id;
		this.name = name;
		this.group = group;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public int getGroup() {
		return group;
	}

	/*
	 * @see com.vti.question2.IStudent#diemDanh()
	 */
	@Override
	public void diemDanh() {
		System.out.println(name + " Điểm danh");
	}

	/*
	 * @see com.vti.question2.IStudent#hocBAi()
	 */
	@Override
	public void hocBai() {
		System.out.println(name + "  đang học bài" + ", Group: " + group);
	}

	/*
	 * @see com.vti.question2.IStudent#diDonVeSinh()
	 */
	@Override
	public void diDonVeSinh() {
		System.out.println(name + "  đang dọn vệ sinh");
	}

}
