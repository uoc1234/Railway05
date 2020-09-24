package TestingSystem_Assignment_1;

import java.time.LocalDate;

public class Program {
public static void main(String[] args) {
	// 1.Department
	Department saleDepartment = new Department();
	saleDepartment.id = 1;
	saleDepartment.name = "Sale";
	
	Department BaoveDepartment = new Department();
	BaoveDepartment.id = 2;
	BaoveDepartment.name = "Baove";
	
	Department MarketingDepartment = new Department();
	MarketingDepartment.id = 2;
	MarketingDepartment.name = "Marketing";
	
	// 2.Position
		Position Position1= new Position();
		Position1.positionID = 1;
		Position1.PositionName = PositionName.DEV;
		
		Position Position2= new Position();
		Position2.positionID = 2;
		Position2.PositionName = PositionName.PM;
		
		Position Position3= new Position();
		Position3.positionID = 3;
		Position3.PositionName = PositionName.TEST;
		
	// 3. Account
	Account account1 = new Account();
	account1.accountID = 1;
	account1.email = "Hanoi@gmail.com";
	account1.username = "Nguyen Ha Noi";
	account1.departmenID = 1;
	account1.positionID = 1;
	account1.createDate = LocalDate.of(1995, 05, 06);
	
	Account account2 = new Account();
	account2.accountID = 2;
	account2.email = "HungYen@gmail.com";
	account2.username = "Nguyen Hung Yen";
	account2.departmenID = 2;
	account2.positionID = 2;
	account2.createDate = LocalDate.of(1996, 5, 12);
	
	Account account3 = new Account();
	account3.accountID = 3;
	account3.email = "ThaiBinh@gmail.com";
	account3.username = "Nguyen Thai Binh";
	account3.departmenID = 3;
	account3.positionID = 3;
	account3.createDate = LocalDate.of(1997, 5, 6);
	
	// 4. Group
	Group  group1 = new Group();
	group1.groupID = 1;
	group1.groupName = "java group";
	group1.createDate = LocalDate.of(2020, 05, 06);
	// GroupAccount[] groupAccount2 = {groupAccount3, groupAccount4};
	
	Group  group2 = new Group();
	group2.groupID = 2;
	group2.groupName = "python group";
	group2.createDate = LocalDate.of(2000, 10, 07);
	// GroupAccount[] groupAccount2 = {groupAccount3, groupAccount4};
	
	Group  group3 = new Group();
	group3.groupID = 2;
	group3.groupName = "php group";
	group3.createDate = LocalDate.of(1996, 12, 9);
	// GroupAccount[] groupAccount2 = {groupAccount3, groupAccount4};
	
	
	// 5.GroupAccount
	GroupAccount GroupAccount1 = new GroupAccount();
	// GroupAccount1.GroupID = 1;
	// GroupAccount1.JoinDate = LocalDate;
	
	
	
	
	
	
	// In thong tin phong ban

	System.out.println("Thong tin phong ban Sale ");
	System.out.println("id: " + saleDepartment.id);
	System.out.println("name: " + saleDepartment.name);

	// In thong tin nhom
	System.out.println("Thong tin java group la: ");
	System.out.println("ID: " + group1.groupID);
	System.out.println("name: "	+ group1.groupName);
	for(GroupAccount groupAccount: group1.accounts) {
		// System.out.println(groupAccount.account.email);
		System.out.println(groupAccount.JoinDate);
	}
	
	
	// System.out.println("");
	// System.out.println("");
	// System.out.println("");
		
}
}
