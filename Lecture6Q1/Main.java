package Lecture6Q1;
/* A) Write a Student class.  Student should have a private name (String) and a private gpa (double).  It should have 
 * a constructor that takes values for the name and gpa, and a reasonable toString().
 * 
 * B) Write a driver class with a main() method.  The main should include:
- Create an ArrayList of Students
- Add four Students to it (for each Student, call the constructor and send a name and a gpa, then add the Student to the List)
- Iterate through the list showing the toString() of each Student
- Use size() to show the size of the list
- Use isEmpty() to show whether the list is currently empty (it isn't)
- Use clear() to clear the list
- Use isEmpty() again to show whether the list is empty now (it is)



Create a Person class with a protected name field (String) and a public getName() method.
Change the Student class you wrote for the last exercise as follows:

- Make Student extend Person
- Add a public getGpa() method
- Remove the name field from Student (since it will inherit Person's name field), but leave the code in the Student constructor 
  that sets name.  This will work because name is protected, not private.
- Change your driver class so that, when  it iterates through the list of Students, it gets the name by calling getName() and 
  gets the GPA by calling getGpa(), then prints them out in a format similar to the one you previously obtained by printing the toString().
 */

import java.util.ArrayList;
public class Main {

	public static void main(String[] args) {
		//abstract						  //concrete
		ArrayList<Student> Students = new ArrayList<>();
		
		
		Students.add(new Student("Cindy", 3.5));
		Students.add(new Student("Alex", 4.0));
		Students.add(new Student("Crowley", 3.1));
		Students.add(new Student("Shiva", 2.8));
		
		//for (Student student : students){
		//	System.out,println(student);
		for (int i=0; i<Students.size(); i++) {
			System.out.println(Students.get(i).getName());
			System.out.println(Students.get(i).getGpa());
		}

	}
}
