package com.vti.entity;

public class Department {

	private int id;
	public String name;
	Account[] accounts;
	private float salary;

	public int getId() {
		return id;
	}

	public void setId(int inId) {
		id = inId;
	}

	public float getSalary(int employeeCode) {
		return salary;
	}

	public Department() {

	}

	public Department(int id, String name) {
		this.id = id;
		this.name = name;
	}

	public Department(String name) {
		this.name = name;
		this.id = 0;
	}
}
