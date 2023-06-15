package checkPoint2;

public class PitBull extends Dog {
	double mouthCapacityInGrams;
	
	
	public PitBull(double mouthCapacityInGrams, String name, double weightInKg){
		super(name, weightInKg);
		this.mouthCapacityInGrams = mouthCapacityInGrams;
	}

	
	public double getMouthCapacityInGrams() {
		return mouthCapacityInGrams;
	}
	public void setMouthCapacityInGrams(double mouthCapacityInGrams) {
		this.mouthCapacityInGrams = mouthCapacityInGrams;
	}
	
	
	public String toString() {
		return this.name + " has the mouth capacity of " + this.mouthCapacityInGrams;
	}
	
	
	public String attack() {
		double weightInKg = this.mouthCapacityInGrams/1000;
		return this.name + " rips its victim to shreds with its vicious jaws";
	}
}
