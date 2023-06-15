package checkPoint1b;

public class Monster {
	private String name;
	private double ferocity;
	
	
	public Monster(String name, double ferocity) {
		this.name = name;
		this.ferocity = ferocity;
	}
	

	public Monster() {
		
	}
	
	
	public void setName(String name) {
		this.name = name;
	}
	public void setFerocity(double ferocity) {
		this.ferocity = ferocity;
	}
		
		
	public String getName() {
		return this.name;
	}
	public double getFerocity() {
		return this.ferocity;
	}
	
	
	public String toString() {
		return "Monster named " + this.name + " with ferocity " + this.ferocity;
	}
	
	
	public boolean equals(Monster otherMonster) {
		return this.name == otherMonster.getName() && this.ferocity == otherMonster.getFerocity();
	}
	
	
	public double getFerocityRatio(Monster otherMonster) {
		double ferocity = this.ferocity / otherMonster.getFerocity();
		return ferocity;
	}
}
