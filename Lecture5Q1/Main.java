/* Write a method with this signature:
public String replaceSubstring(String oldString, int subStart, int subEnd, String stringToInsert)

that takes OldString, replaces the characters starting with start and ending with end - 1 with stringToInsert.  For example, if you 
call your method with the arguments "Godzilla is king!", 12, 16, "delicious", the method will return the String "Godzilla is delicious!".  
For this exercise, you do not need to validate the indices; for example, if the subStart parameter is -1, the method will crash.
Hint: take the substring from character 0 to character subStart, concatenate stringToInsert to it, then concatenate the substring from 
subEnd to the end of the original String.

Write a main() that tests your method with the original String "Destroy all Monsters!", the stringToInsert "tomatoes", and several different 
combinations of subStart and subEnd. 
*/

package Lecture5Q1;
public class Main {
	public static void main(String[] args) {
		String[] stringArray = {"Encapsulation", "Isomorphism", "Polymorphism", "Iorinada"};
		System.out.println(largestString(stringArray));
		System.out.println(replaceSubString("Godzilla is king!", 12, 16, "delicious"));
	}

	
/*Write a class with a method to find and return the largest value in an array of Strings (that is, the String that is last in 
 * lexicographic order), and a driver method that calls your method using a hard-coded array of Strings and prints out the return value.*/
	public static String largestString(String[] array) {
		String largestString = "";
		String largestString2 = array[0];
		for(String s : array) {
			if(s.compareTo(largestString)>0){
				largestString = s;
			}
		}
		return largestString;
	}
	public static String replaceSubString(String oldString, int subStart, int subEnd, String stringToInsert) {
		String returnString = oldString.substring(0, subStart) + stringToInsert + oldString.substring(subEnd);
		return returnString;
	}
}
