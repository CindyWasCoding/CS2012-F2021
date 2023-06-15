package hw2;

import java.util.Scanner;
import java.util.Date;

public class AttackMonitor {
	public MonsterAttack[] MonsterAttacks;

	public void reportAttacks() {
		this.MonsterAttacks = new MonsterAttack[5];

		for (int i = 0; i < MonsterAttacks.length; i++) {
			Scanner sc = new Scanner(System.in);
			System.out.print("Enter the name: ");
			String name = sc.nextLine();
			System.out.print("Enter the location: ");
			String location = sc.nextLine();
			System.out.print("Enter the damages: ");
			double damage = sc.nextDouble();
			Date date = new Date();
			MonsterAttack monsterattacks = new MonsterAttack(name, location, damage, date);
			MonsterAttacks[i] = monsterattacks;
		}
	}

	public void showAttacks() {
		for (int i = 0; i < MonsterAttacks.length; i++) {
			System.out.println(this.MonsterAttacks[i].toString());
		}
	}

	public void showDamages() {
		double total = 0.0;
		for (int i = 0; i < MonsterAttacks.length; i++) {
			total += this.MonsterAttacks[i].getDamagesInMillionUSD();
		}
		double mean = total / this.MonsterAttacks.length;
		System.out.println(mean);
	}

	// showMonster does not work
	public void showMonsters() {
		int count = 1;
		for (int i = 0; i < MonsterAttacks.length; i++) {
			for (int j = i + 1; j < MonsterAttacks.length; j++) {
				if (this.MonsterAttacks[i].getMonsterName().equals(this.MonsterAttacks[j].getMonsterName())) {
					count++;
				}
			}
			System.out.print(this.MonsterAttacks[i].getMonsterName() + ", " + count + " attack(s); " + "\n");
		}
	}

	public void mainMenu() {
		int select;
		while (true) {
			System.out.println("Main Menu - Select 1-5");
			System.out.println("1) Report Attacks");
			System.out.println("2) Show Attacks");
			System.out.println("3) Show Damages");
			System.out.println("4) Show Monsters");
			System.out.println("5) Quit");

			Scanner input = new Scanner(System.in);
			select = input.nextInt();
			switch (select) {
			case 1:
				reportAttacks();
				break;
			case 2:
				showAttacks();
				break;
			case 3:
				showDamages();
				break;
			case 4:
				showMonsters();
				break;
			case 5:
				System.out.println("Quitting...");
				System.exit(0);
			}
		}
	}
}