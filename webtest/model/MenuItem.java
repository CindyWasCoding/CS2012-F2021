package webtest.model;

public class MenuItem {

	private int id;
	private String name;
	private String description;
	private double price;
	private String imagePath;
	private String foodType;
	private boolean featured;

	public MenuItem() {
	}

	// constructor if featured is present
	public MenuItem(int id, String name, String description, String foodType, double price, boolean featured,
			String imagePath) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.foodType = foodType;
		this.price = price;
		this.imagePath = imagePath;
		this.featured = featured;
	}

	// Constructor if featured is not present
	public MenuItem(int id, String name, String description, String foodType, double price, String imagePath) {
		this.name = name;
		this.description = description;
		this.foodType = foodType;
		this.price = price;
		this.imagePath = imagePath;
		this.featured = false;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImagePath() {
		return this.imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public boolean getFeatured() {
		return featured;
	}

	public void setFeatured(boolean featured) {
		this.featured = featured;
	}

	public String getFoodType() {
		return foodType;
	}

	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
