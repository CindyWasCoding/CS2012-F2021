package webtest.model;

import java.util.List;

public class ConfirmedOrder {
	private int orderId;
	private int userId;
	private String userName;
	private List<SelectedItem> items;

	public ConfirmedOrder(int userId, List<SelectedItem> items) {
		this.userId = userId;
		this.items = items;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public List<SelectedItem> getItems() {
		return items;
	}

	public void setItems(List<SelectedItem> items) {
		this.items = items;
	}

	public void addItem(MenuItem newItem, int qty) {
		this.items.add(new SelectedItem(newItem, qty));

	}
}
