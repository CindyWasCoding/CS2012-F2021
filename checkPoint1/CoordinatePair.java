package checkPoint1;

public class CoordinatePair {
	//Private data variables
	private int x;
	private int y;
	
	//Constructor setter
	public void setX(int x) {
		this.x = x;
	} 
	public void setY(int y) {
		this.y = y;
	}
	
	
	//Constructor that takes no arguments
	public CoordinatePair() {
		
	}
	
	
	public CoordinatePair(int x, int y) {
		this.x = x;
		this.y = y;
	}
	
	
	//Accessors for x and y (getters)
	public int getX() {
		return this.x;
	}
	public int getY() {
		return this.y;
	}
	
	
	//toString Constructor
	public String toString() {
		return "CoordinatePair(" + this.x + ", " + this.y + ")";
		//return String.format("CoordinatePair(%d, %d)", this.x, this.y);
	}
	
	
	
	public boolean equals(CoordinatePair otherPair) {
		return this.x == otherPair.getX() && this.y == otherPair.getY();
	}
	
	
	//Euclidean Distance
	public double getEuclideanDistance(CoordinatePair otherPair) {
		double x = Math.pow(this.x - otherPair.getX(), 2);
		double y = Math.pow(this.y - otherPair.getY(), 2);
		return Math.sqrt(x+y);
	}
}
