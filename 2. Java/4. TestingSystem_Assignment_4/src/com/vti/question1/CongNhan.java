package com.vti.question1;

import java.util.Scanner;

public class CongNhan extends CanBo {

	private int bac;

	public CongNhan() {
		super();
		Scanner scanner = new Scanner(System.in);

		System.out.println("Mời bạn nhập vào bac: ");
		this.bac = scanner.nextInt();
	}

	public CongNhan(int bac, String hoTen, int tuoi, String gioiTinh, String diaChi) {
		super(hoTen, tuoi, gioiTinh, diaChi);

		this.bac = bac;
	}

	public int getBac() {
		return bac;
	}

	public void setBac(int bac) {
		this.bac = bac;
	}

	public void dongThuyen() {
		System.out.println(bac + " Đã đóng thuyền");
	}

	/*
	 * @see com.vti.question1.CanBo#toString()
	 */
	@Override
	public String toString() {
		String result = "Công nhân: " + super.toString();
		result += "Bậc: " + bac;
		result += "-----------------------";
		return result;
	}

	/*
	 * @see com.vti.question1.CanBo#checkIn()
	 */
	@Override
	public void checkIn() {
		System.out.println("Công Nhân: " + bac + " đã check in");
	}

	/*
	 * @see com.vti.question1.LamViec#checkOut()
	 */
	@Override
	public void checkOut() {
		// TODO Auto-generated method stub

	}

	/*
	 * @see com.vti.question1.LamViec#anCom()
	 */
	@Override
	public void anCom() {
		// TODO Auto-generated method stub

	}

}
