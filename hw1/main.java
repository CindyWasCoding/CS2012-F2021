package hw1;
import java.util.Scanner;
public class main {
	public static void main(String[] args) {
		tenArray();
		cubeArray();
		thirdteenArray();
		divideFourtyTwo();
		arrayDoubles();
	}

	/*
	 * Write a method that creates an array of ten nonnegative doubles, initializes
	 * it with values taken from console input (that is, a Scanner from System.in)
	 * inside a loop, and returns a reference to the array. Validate the user input
	 * to make sure the program does not crash if the user enters invalid data. For
	 * each double you request, keep asking until the user enters a valid
	 * nonnegative double.
	 */

	public static double[] tenArray() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter 10 nonnegative doubles: ");  
	    double[] arr = new double[10];  
	    double myDouble = 0;
	    
	    for(int i=0; i<arr.length; i++) {  
	    	while (!sc.hasNextDouble()){
	    		sc.nextLine();
	    		System.out.println("ERROR - Contains non-double - Try again: ");
	    	}
	    	//DOESN'T TAKE NEGATIVES
	    	while (myDouble < 0){
	    		sc.nextLine();
	    		System.out.println("ERROR - Contains negative - Try again: ");
	    	}
	    	arr[i]=sc.nextDouble();
	    }  
	    System.out.println("The elements are: ");  
	    for (int i=0; i<arr.length; i++) {  
	    	System.out.println(arr[i]);  
	    }  
		return arr;
	}

	/*
	 * Write a void method that takes an array of doubles as its only parameter,
	 * calculates the cube of each value in the array, and prints out each result.
	 * This method should not change the values in the array.
	 */

	public static void cubeArray() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter amount of elements in the array: ");
		int length = sc.nextInt();
		double[] arr = new double[length];
		double cube = 0;
		int i = 0;
		System.out.println("Enter doubles: ");
		
		for (i=0; i<arr.length; i++) {
			while (!sc.hasNextDouble()) {
				sc.nextLine();
				System.out.println("ERROR - Contains non-double - Try again:");
			}
			arr[i] = sc.nextInt();
		}

		System.out.println("The cube for each element: ");
		for (i=0; i<arr.length; i++) {
			cube = arr[i] * arr[i] * arr[i];
			System.out.println(cube);
		}
	}

	/*
	 * Write a method that takes an array of doubles as its only parameter and
	 * replaces any value exceeding 13 with the value 13. This method should be
	 * void; in other words it should not return anything. Be sure you understand
	 * how array references are sent to methods.
	 */

	public static void thirdteenArray() {
		double[] arr = { 1.9, 3.2, 6.4, 3.5, 0.8, 18 };
		System.out.println("Replaces value exceeding 13 with value 13");
		for (int i=0; i<arr.length; i++) {
			if (arr[i]>13) {
				System.out.println(" 13 was: ");
			}
			System.out.println(arr[i]);
		}
	}

	/*
	 * Write a method that takes an array of doubles as its only parameter, copies
	 * the array, replaces each value in the old array with value divided by 42 (ie
	 * replace the value x with x/42), and returns a reference to the new array. Be
	 * sure you understand the difference between copying an array and copying an
	 * array reference, or you will not do this part correctly.
	 */

	public static double[] divideFourtyTwo() {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter amount of elements in the array: ");
		int length = sc.nextInt();
		double[] arr = new double[length];
		double[] copyArray = new double[arr.length];
		System.out.println("Enter double: ");
		
		for (int i=0; i<copyArray.length; i++) {
			copyArray[i] = sc.nextInt();
		}
		System.out.println("The elements are: ");
		for (int i=0; i<copyArray.length; i++) {
			System.out.println(copyArray[i] + " / 42: " + copyArray[i] / 42);
		}
		return copyArray;
	}

	/*
	 * Write a void method that takes an array of doubles as its only parameter and
	 * prints out all the values.
	 */

	public static void arrayDoubles() {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter amount of elements in the array: ");
		int length = input.nextInt();
		double[] arr = new double[length];
		System.out.println("Enter doubles: ");
		
		for (int i = 0; i < arr.length; i++) {
			while (!input.hasNextDouble()) {
				input.nextLine();
				System.out.println("ERROR - Contains non-double - Try again: ");
			}
			arr[i] = input.nextInt();
		}
		System.out.println("The elements are: ");
		for (int i = 0; i < arr.length; i++) {
			System.out.println(arr[i]);
		}
	}
}
