package com.vti.question1;

public class KySu extends CanBo {

	private String nganhDaotao;

	public KySu(String nghanhDaotao, String hoTen, int tuoi, String gioiTinh, String diaChi) {
		super(hoTen, tuoi, gioiTinh, diaChi);
		this.nganhDaotao = nghanhDaotao;
	}

	public String getNghanhDaotao() {
		return nganhDaotao;
	}

	public void setNghanhDaotao(String nghanhDaotao) {
		this.nganhDaotao = nghanhDaotao;
	}

	/*
	 * @see com.vti.question1.CanBo#toString()
	 */
	@Override
	public String toString() {
		String result = "Kỹ sư: " + super.toString();
		result += "Ngành Đào tạo: " + nganhDaotao;
		result += "-----------------------";
		return result;
	}

	/*
	 * @see com.vti.question1.CanBo#checkIn()
	 */
	@Override
	public void checkIn() {
		System.out.println("Kỹ Sư: " + nganhDaotao + " đã check in");
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
