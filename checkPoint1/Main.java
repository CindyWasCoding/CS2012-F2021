package checkPoint1;

/*Write a CoordinatePair class.  One CoordinatePair object represents one point on a plane, with an int x coordinate 
 * and an int y coordinate.  In addition to the two private data variables, include the following public methods:

- A constructor which takes two arguments, the x and y values 

- Another constructor which takes no arguments 

- Getters and setters for each variable (x and y)

- A toString() that shows the x and y values in this format: 
  CoordinatePair(2, -5)
  
- A boolean equals(CoordinatePair otherPair) method which returns true if otherPair has the same x and y values as the
  instance on which the method is called, and otherwise returns false (think about String’s equals() method).
  
- A double getEuclideanDistance(CoordinatePair otherPair) method that calculates and returns the Euclidean distance 
  between the instance CoordinatePair and otherPair.  Use the Pythagorean theorem; the Euclidean distance is the 
  square root of the sum of the squares of the difference between the x coordinates and the difference between the 
  y coordinates.  For example, the Euclidean distance between coordinates at (-1, 4) and (1, 3) is sqrt(2^2 + -1^2) = sqrt(5) =~ 2.236068.  
  Do not worry about the precision; just return the result of the calculation.   Math.sqrt() returns the square root of a positive number; 
  Math.pow(base, exponent) returns the result of raising base to exponent (for example, Math.pow(2,3) returns 8)
*/

public class Main {

	public static void main(String[] args) {
		CoordinatePair coordinatepairs = new CoordinatePair();
		CoordinatePair coordinatepairs2 = new CoordinatePair(2,3);
		
		//Printing the values of coordinate pairs
		System.out.println(coordinatepairs);
		System.out.println(coordinatepairs2);
		
		//Seeing if the Boolean equals to each other
		System.out.println(coordinatepairs.equals(coordinatepairs2));
		
		//Printing out Euclidean Distance
		System.out.println(coordinatepairs.getEuclideanDistance(coordinatepairs2));
	}

}
