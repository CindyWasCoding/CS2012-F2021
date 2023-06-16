/*Dog is a class with the following instance data and methods. Think about the correct data types, access modifiers, and method signatures.
data:
- name
- weightInKg;

methods:
- constructor that takes the name and weight as parameters and sets these values for the Dog
- getName()
- setName()
- getWeightInKg()
- setWeightInKg()
- toString()
- bark().  this method should not print anything, but should return the String "woof"

None of the methods or data should be static.


PitBull extends Dog and also has:
- an additional instance variable, mouthCapacityInGrams
- a constructor that takes parameters and uses them to set name, weight, and mouthCapacityInGrams,
- a getter and setter for mouthCapacityInGrams
- a toString()  
- an attack() method that prints out a message similar to this: "Fifi rips its victim to shreds with its vicious jaws" and increases the 
PitBull's weight by its mouthCapacityInGrams/1000 (since the capacity is measured in grams and the weight in KG).  This message must 
include the actual name of the PitBull.


Pomeranian extends Dog and also has
- a constructor
- a bark() method that overrides the one from Dog (remember to use the @Override method).  This bark() should not print anything but 
should return the String "yap yap yap."
- a huntGopher() method that prints out a message similar to "Thor digs into gopher burrow in single minded quest of prey".  This message 
must include the actual name of the Pomeranian.
*/

package checkPoint2;
public class Main {
	public static void main(String[] args) {
		Dog dog1 = new Dog("Cola", 10);
		Dog dog2 = new PitBull(8000, "Coca", 25);
		Dog dog3 = new Pomeranian("Pepsi", 7);
		System.out.println(dog1);
		System.out.println(dog1.bark());
		System.out.println(dog2);
		System.out.println(((PitBull) dog2).attack());
		System.out.println(dog3);
		System.out.println(dog3.bark());
		System.out.println(((Pomeranian) dog3).huntGopher());
	}
}
