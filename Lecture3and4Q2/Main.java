package Lecture3and4Q2;
/* Write a FortuneCookie class.  This class must have:
- An instance, not static, variable called message, which is a String and is declared in the class but outside any method. 

- A constructor which takes a String as its only argument and sets message to the String. 

- An instance, not static, method, called getMessage(), which returns the message. 

- FortuneCookie should not have a main() method.

Then write a driver class with a main() method.  main() should:
- Create an array of five FortuneCookies

- Instantiate the FortuneCookies by calling the constructor and sending five different school-appropriate messages (for example,  
  "You will have a great success today", "A chance meeting brings opportunity ", etc.)
  
- Iterate through the array, calling getMessage() on each FortuneCookie and printing out the String returned.
*/
public class Main {
	public static void main(String[] args) {
		FortuneCookie[] fortuneCookies = {
				new FortuneCookie("You will have a great success today"),
				new FortuneCookie("A chance meeting brings opportunity"),
				new FortuneCookie("You will become a successfully person"),
				new FortuneCookie("You will have everything that you want."),
				new FortuneCookie("Hard work pays off in the future.")
		};
		for(int i=0; i<fortuneCookies.length;i++) {
			System.out.println(fortuneCookies[i].getMessage());
		}
	}
}