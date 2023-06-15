package checkPoint1b;
/*Write a Monster class. A Monster has a name (String) and a ferocity (double). In addition to the two private data variables, 
 * include the following public instance (not static) methods:

- A constructor which takes two arguments, the name and ferocity for this monster.

- Another constructor which takes no arguments

- Getters and setters for each variable

- A toString() that shows information about the monster in this format:
  Monster named Godzilla with ferocity 1.0

- A boolean equals(Monster otherMonster) method which returns true if otherMonster has the same name and ferocity as this monster, 
  and otherwise returns false (think about String’s equals() method).
  
- A double getFerocityRatio(Monster otherMonster) method that calculates and returns the ratio of this monster's ferocity to the 
  ferocity of some other monster. For example, if this monster's ferocity is 0.7 and the other monster's ferocity is 0.8, this method 
  returns 0.875. Note that, like equals(), this is an instance method and that it takes only one parameter.
*/
public class Main {
	public static void main(String[] args) {
		Monster monster1 = new Monster();
		monster1.setName("Godzilla");
		monster1.setFerocity(0.7);
		
		
		Monster monster2 = new Monster("King Kong", 0.8);
		Monster monster3 = new Monster("King Kong", 0.8);
		Monster monster4 = new Monster("Donkey Kong", 0.2);
		
		System.out.println(monster1);
		System.out.println(monster2);
		System.out.println(monster1.equals(monster2));
		System.out.println(monster2.equals(monster3));
		System.out.println(monster1.getFerocityRatio(monster2));
		System.out.println(monster1.getFerocityRatio(monster4));
	}
}