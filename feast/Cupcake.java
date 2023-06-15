package feast;

public class Cupcake extends Portion {
	int height;
	
	Cupcake(int radius, int height){
		super(radius);
		this.height = height;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}
	
	
}
