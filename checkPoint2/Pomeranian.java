package checkPoint2;

public class Pomeranian extends Dog {
	public Pomeranian(String name, double weightInKg) {
		super(name, weightInKg);
	}
	
	
	@Override
	public String bark() {
		return "yap yap yap";
	}
	
	
	public String huntGopher() {
		return this.name + " digs into gopher burrow in single minded quest of prey";
	}
}
