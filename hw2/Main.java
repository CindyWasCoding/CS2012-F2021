/*
Create a MonsterAttack class.  MonsterAttack has the following private data variables.  Think about the correct data type to use for each variable:
monsterName (eg Godzilla)
attackLocation (eg Tokyo)
damagesInMillionUSD (eg 123.45)
date (eg October 27, 1954, OK to use the Java Date class)
Create whatever constructors, getters, and setters you need.  Be sure to write a reasonable toString().

Create an AttackMonitor class.  AttackMonitor contains an array of MonsterAttacks and  has methods to generate reports on the attacks.  It should include at least these methods:

reportAttacks() creates an array of five attacks, takes user input using a Scanner from System.in, creates the attacks (instances of MonsterAttack), and adds the attacks to the array.
showAttacks() iterates through the array and prints out the result of running the toString() of each attack.
showDamages() calculates and prints the total amount of damages for all attacks and the mean damages
showMonsters() shows the names of all monsters involved in the attacks and the number of attacks for each monster (ie: "Godzilla, 3 attack(s); Bigfoot, 1 attack(s); Yeti: 1 attack(s)).  Since we may discover new monsters after compile time, you must find the names using a getter in MonsterAttack.  Don't hard- code the monster names.
A menu method that offers the user the opportunity to run any of the methods listed above or to quit.  The menu must be contained in a loop with a switch statement, as shown in several lecture examples..  The user can do any of the above tasks in any order, as many times as she wants to.

Write a main() method for AttackMonitor.  Think about what it needs to do to show that the other classes work correctly.  The driver should only call methods from AttackMonitor, not methods from MonsterAttack.
*/
package hw2;

public class Main {
	public static void main(String[] args) {
		AttackMonitor attackmonitors = new AttackMonitor();
		attackmonitors.mainMenu();
	}
}
