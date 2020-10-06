package com.vti.question1;

public class Program {
	public static void main(String[] args) {

//		// cong nhan
//		CongNhan[] congNhans = new CongNhan[100];
//
//		for (int i = 0; i < congNhans.length; i++) {
//			congNhans[i] = new CongNhan();
//		}
//
//		for (CongNhan congNhan : congNhans) {
//			System.out.println(congNhan);
//		}
//
//		// ky su
//		KySu[] kySus = new KySu[100];
//
//		for (int i = 0; i < kySus.length; i++) {
//			kySus[i] = new KySu();
//		}
//
//		for (KySu kySu : kySus) {
//			System.out.println(kySu);
//		}

		// thay the
		CanBo[] canBos = new CanBo[20];
		for (int i = 0; i < 10; i++) {
			canBos[i] = new CongNhan(i + 1, "Nguyen van a" + (i + 1), 10, "nam", "nam");
		}

		for (int i = 10; i < 20; i++) {
			canBos[i] = new KySu("Nghanh" + (i + 1), "Nguyen van a" + (i + 1), 10, "nam", "nam");
		}

		for (CanBo canBo : canBos) {
			// System.out.println(canBo.toString());
			
			canBo.checkIn();
			
//			if (canBo instanceof CongNhan) {
//				((CongNhan) canBo).dongThuyen();
//			}
		}

	}
}
