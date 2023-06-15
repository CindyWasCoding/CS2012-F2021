package checkPoint2;

public class Dog {
	String name;
	double weightInKg;
	
	
	public Dog(String name, double weightInKg) {
		this.name = name;
		this.weightInKg = weightInKg;
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public double getWeightInKg() {
		return weightInKg;
	}
	public void setWeightInKg(double weightInKg) {
		this.weightInKg = weightInKg;
	}
	
	
	public String toString() {
		return this.name + " weighs " + this.weightInKg;
	}
	
	
	public String bark() {
		return "woof";
	}
}
