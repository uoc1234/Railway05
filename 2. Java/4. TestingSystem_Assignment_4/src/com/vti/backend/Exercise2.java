package com.vti.backend;

import com.vti.entity.Account;
import com.vti.entity.Group;

public class Exercise2 {
	public void question3() {
		Group group = new Group((byte) 5, "abc");

		String[] usernames = { "nam1", "nam2" };
		Account creator = new Account("nam 3");

		Group group2 = new Group((byte) 5, "abc", usernames, creator);
	}
}
