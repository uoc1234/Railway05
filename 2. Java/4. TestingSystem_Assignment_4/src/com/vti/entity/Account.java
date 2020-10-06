package com.vti.entity;

import java.time.LocalDate;

public class Account extends Object {

	public short accountID;
	String email;
	String username;
	String fullName;
	private boolean isMale;

	public int getId() {
		if (accountID < -1) {
			return 0;
		}

		return accountID;
	}

	public String getGender1() {
		if (isMale) {
			return "Nam";
		}

		return "nu";
	}

	LocalDate createDate;
	Gender gender;

	Department department;

	GroupAccount[] groups;

	public Account(String username) {
		this.username = username;
	}

	/*
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		String result = "";

		if (fullName != null) {
			result += "Fullname: " + fullName;
		}

		if (fullName != null) {
			result += "Fullname: " + fullName;
		}

		return super.toString();
	}
}
