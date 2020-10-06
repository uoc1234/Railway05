package com.vti.question1;

import java.util.Scanner;

public abstract class CanBo implements LamViec {

	private String hoTen;
	private int tuoi;
	private String gioiTinh;
	private String diaChi;

	public CanBo() {
		Scanner scanner = new Scanner(System.in);
		System.out.println("MỜi bạn nhập vào họ và tên: ");
		this.hoTen = scanner.nextLine();
		System.out.println("MỜi bạn nhập vào Giới tính: ");
		this.gioiTinh = scanner.nextLine();
		// ...
	}

	public CanBo(String hoTen, int tuoi, String gioiTinh, String diaChi) {
		this.hoTen = hoTen;
		this.tuoi = tuoi;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
	}

	/*
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		String str1 = obj.toString();
		if (hoTen.toLowerCase().contains(str1.toLowerCase())) {
			return true;
		}
		return false;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public int getTuoi() {
		return tuoi;
	}

	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	/*
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		String result = "";
		result += "Họ và tên: " + hoTen + "\n";
		return result;
	}
}
