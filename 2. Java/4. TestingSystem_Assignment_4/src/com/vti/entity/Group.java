package com.vti.entity;

public class Group {

	byte id;
	String name;
	Account[] accounts;
	Account creator;

	public Group() {

	}

	public Group(byte id, String name) {
		this.id = id;
	}

	public Group(byte id, String name, Account[] accounts, Account creator) {
		this.id = id;
		this.name = name;
		this.accounts = accounts;
		this.creator = creator;
	}

	public Group(byte id, String name, String[] usernames, Account creator) {
		this.id = id;
		this.name = name;
		this.creator = creator;
		// account
		Account[] accountTemps = new Account[usernames.length];

		for (int i = 0; i < usernames.length; i++) {
			accountTemps[i] = new Account(usernames[i]);
		}

		this.accounts = accountTemps;
	}

}
